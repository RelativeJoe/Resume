//
//  WrappingHStack.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

struct WrappingHStack: Layout {
    private var horizontalSpacing: CGFloat
    private var verticalSpacing: CGFloat
    
    public init(horizontalSpacing: CGFloat, verticalSpacing: CGFloat? = nil) {
        self.horizontalSpacing = horizontalSpacing
        self.verticalSpacing = verticalSpacing ?? horizontalSpacing
    }

    public func sizeThatFits(
        proposal: ProposedViewSize,
        subviews: Subviews,
        cache _: inout ()
    ) -> CGSize {
        guard !subviews.isEmpty else {
            return .zero
        }
        let height = subviews.map({$0.sizeThatFits(proposal).height}).max() ?? 0
        var rowWidths = [CGFloat]()
        var currentRowWidth = CGFloat.zero
        subviews.forEach { subview in
            let width = subview.sizeThatFits(proposal).width
            if (currentRowWidth + horizontalSpacing + width) >= proposal.width ?? 0 {
                rowWidths.append(currentRowWidth)
                currentRowWidth = width
            }else {
                currentRowWidth += horizontalSpacing + width
            }
        }
        rowWidths.append(currentRowWidth)

        let rowCount = CGFloat(rowWidths.count)
        return CGSize(
            width: max(rowWidths.max() ?? 0, proposal.width ?? 0),
            height: rowCount * height + (rowCount - 1) * verticalSpacing
        )
    }

    public func placeSubviews(
        in bounds: CGRect,
        proposal: ProposedViewSize,
        subviews: Subviews, cache: inout ()
    ) {
        let height = subviews.map({$0.dimensions(in: proposal).height}).max() ?? 0
        guard !subviews.isEmpty else {return}
        var x = bounds.minX
        var y = height / 2 + bounds.minY
        subviews.forEach { subview in
            let dimensions = subview.dimensions(in: proposal)
            let width = dimensions.width
            x += width / 2
            if x + width / 2 > bounds.maxX {
                x = bounds.minX + width / 2
                y += height + verticalSpacing
            }
            subview.place(
                at: CGPoint(x: x, y: y),
                anchor: .center,
                proposal: ProposedViewSize(
                    width: width,
                    height: dimensions.height
                )
            )
            x += width / 2 + horizontalSpacing
        }
    }
}
