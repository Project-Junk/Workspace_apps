.class public Lcom/google/android/material/shape/ShapePathModel;
.super Ljava/lang/Object;
.source "ShapePathModel.java"


# annotations
.annotation build Lcom/google/android/material/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# static fields
.field private static final DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

.field private static final DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/material/shape/CornerTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    .line 28
    new-instance v0, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-direct {v0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_CORNER_TREATMENT:Lcom/google/android/material/shape/CornerTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 42
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 43
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 44
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 45
    sget-object v0, Lcom/google/android/material/shape/ShapePathModel;->DEFAULT_EDGE_TREATMENT:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 46
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 47
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 48
    iput-object v0, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object p0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object p0
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 58
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 59
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 60
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 70
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 71
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 72
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 89
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 90
    iput-object p3, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 91
    iput-object p4, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 108
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 109
    iput-object p3, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 110
    iput-object p4, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method
