.class public Lcolor/support/v7/widget/Toolbar$LayoutParams;
.super Landroidx/appcompat/widget/Toolbar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mTypeSearch:Z

.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 2366
    invoke-direct {p0, v0, v1, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2354
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2338
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    const p1, 0x800013

    .line 2355
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2361
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2338
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    .line 2362
    iput p3, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2348
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2338
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2399
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2338
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2390
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    .line 2338
    iput v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    .line 2393
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 2382
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 p1, 0x0

    .line 2338
    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    return-void
.end method

.method public constructor <init>(Lcolor/support/v7/widget/Toolbar$LayoutParams;)V
    .locals 1

    .line 2374
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    const/4 v0, 0x0

    .line 2338
    iput v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2342
    iput-boolean v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mTypeSearch:Z

    .line 2376
    iget p1, p1, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method


# virtual methods
.method public copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2403
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 2404
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 2405
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 2406
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    return-void
.end method
