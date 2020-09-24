.class public final Lcolor/support/design/widget/ColorTabLayout$Tab;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mParent:Lcolor/support/design/widget/ColorTabLayout;

.field private mPointMode:I

.field private mPointNumber:I

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcolor/support/design/widget/ColorTabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1307
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPosition:I

    const/4 v0, 0x0

    .line 1313
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointMode:I

    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1590
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1395
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1441
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPointMode()I
    .locals 1

    .line 1325
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointMode:I

    return v0
.end method

.method public final getPointNumber()I
    .locals 1

    .line 1347
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointNumber:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1451
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPosition:I

    return v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1371
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1465
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isSelected()Z
    .locals 2

    .line 1542
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1543
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1600
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    .line 1601
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    .line 1602
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1603
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1604
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1605
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1606
    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPosition:I

    .line 1607
    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mCustomView:Landroid/view/View;

    const/4 v0, 0x0

    .line 1608
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointMode:I

    .line 1609
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointNumber:I

    return-void
.end method

.method public final select()V
    .locals 2

    .line 1530
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0, p0}, Lcolor/support/design/widget/ColorTabLayout;->selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    return-void

    .line 1531
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setContentDescription(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1559
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_0

    .line 1562
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1560
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1576
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1577
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public final setCustomView(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public final setCustomView(Landroid/view/View;)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public final setIcon(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1489
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1490
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1476
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1477
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public final setPointMode(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1

    .line 1335
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointMode:I

    if-eq p1, v0, :cond_0

    .line 1336
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointMode:I

    .line 1337
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p1}, Lcolor/support/design/widget/ColorTabLayout;->access$300(Lcolor/support/design/widget/ColorTabLayout;)Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public final setPointNumber(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1

    .line 1357
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointNumber:I

    if-eq p1, v0, :cond_0

    .line 1358
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPointNumber:I

    .line 1359
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {p1}, Lcolor/support/design/widget/ColorTabLayout;->access$300(Lcolor/support/design/widget/ColorTabLayout;)Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->invalidate()V

    :cond_0
    return-object p0
.end method

.method final setPosition(I)V
    .locals 0

    .line 1455
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mPosition:I

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1382
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final setText(I)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1520
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mParent:Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p1

    return-object p1

    .line 1521
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setText(Ljava/lang/CharSequence;)Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1506
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1507
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method final updateView()V
    .locals 1

    .line 1594
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$Tab;->mView:Lcolor/support/design/widget/ColorTabLayout$TabView;

    if-eqz v0, :cond_0

    .line 1595
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method