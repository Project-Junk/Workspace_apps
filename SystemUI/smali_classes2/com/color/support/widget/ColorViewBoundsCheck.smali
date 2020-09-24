.class Lcom/color/support/widget/ColorViewBoundsCheck;
.super Ljava/lang/Object;
.source "ColorViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorViewBoundsCheck$Callback;,
        Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;,
        Lcom/color/support/widget/ColorViewBoundsCheck$ViewBounds;
    }
.end annotation


# static fields
.field static final CVE_PVE_POS:I = 0xc

.field static final CVE_PVS_POS:I = 0x8

.field static final CVS_PVE_POS:I = 0x4

.field static final CVS_PVS_POS:I = 0x0

.field static final EQ:I = 0x2

.field static final FLAG_CVE_EQ_PVE:I = 0x2000

.field static final FLAG_CVE_EQ_PVS:I = 0x200

.field static final FLAG_CVE_GT_PVE:I = 0x1000

.field static final FLAG_CVE_GT_PVS:I = 0x100

.field static final FLAG_CVE_LT_PVE:I = 0x4000

.field static final FLAG_CVE_LT_PVS:I = 0x400

.field static final FLAG_CVS_EQ_PVE:I = 0x20

.field static final FLAG_CVS_EQ_PVS:I = 0x2

.field static final FLAG_CVS_GT_PVE:I = 0x10

.field static final FLAG_CVS_GT_PVS:I = 0x1

.field static final FLAG_CVS_LT_PVE:I = 0x40

.field static final FLAG_CVS_LT_PVS:I = 0x4

.field static final GT:I = 0x1

.field static final LT:I = 0x4

.field static final MASK:I = 0x7


# instance fields
.field mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

.field final mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorViewBoundsCheck$Callback;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    .line 125
    new-instance p1, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-direct {p1}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    return-void
.end method


# virtual methods
.method findOneViewWithinBoundFlags(IIII)Landroid/view/View;
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v0}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getParentStart()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getParentEnd()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 214
    iget-object v4, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 215
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v5, v4}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v5

    .line 216
    iget-object v6, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v6, v4}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result v6

    .line 217
    iget-object v7, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v7, v0, v1, v5, v6}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p3, :cond_1

    .line 219
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 220
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p3}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 221
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 227
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 228
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5, p4}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 229
    iget-object v5, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method isViewWithinBoundFlags(Landroid/view/View;I)Z
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    iget-object v1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v1}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getParentStart()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v2}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getParentEnd()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    .line 245
    invoke-interface {v3, p1}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getChildStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mCallback:Lcom/color/support/widget/ColorViewBoundsCheck$Callback;

    invoke-interface {v4, p1}, Lcom/color/support/widget/ColorViewBoundsCheck$Callback;->getChildEnd(Landroid/view/View;)I

    move-result p1

    .line 244
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->setBounds(IIII)V

    if-eqz p2, :cond_0

    .line 247
    iget-object p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->resetFlags()V

    .line 248
    iget-object p1, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->addFlags(I)V

    .line 249
    iget-object p0, p0, Lcom/color/support/widget/ColorViewBoundsCheck;->mBoundFlags:Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorViewBoundsCheck$BoundFlags;->boundsMatch()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
