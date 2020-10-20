//
//  PDFDraw.swift
//  PDFprac
//
//  Created by JillOU on 2020/10/19.
//  Copyright © 2020 Jillou. All rights reserved.
//

import Foundation
import PDFKit
class PDFDraw {
    var pdfView:PDFView!
    var drawpath:UIBezierPath?
    var drawcurrentAnnotation:PDFAnnotation?
    var drawcurrentPage:PDFPage?
}
