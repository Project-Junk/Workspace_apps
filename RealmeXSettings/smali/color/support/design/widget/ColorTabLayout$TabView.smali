.class Lcolor/support/design/widget/ColorTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "ColorTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcolor/support/design/widget/ColorTabLayout;


# direct methods
.method public constructor <init>(Lcolor/support/design/widget/ColorTabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1624
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    .line 1625
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1622
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mDefaultMaxLines:I

    .line 1626
    iget v1, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabBackgroundResId:I

    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabBackgroundResId:I

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1630
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1633
    :cond_0
    iget p2, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingStart:I

    iget v1, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingTop:I

    iget v2, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcolor/support/design/widget/ColorTabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v1, v2, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1634
    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setGravity(I)V

    .line 1635
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setOrientation(I)V

    .line 1636
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setClickable(Z)V

    .line 1638
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 1637
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcolor/support/design/widget/ColorTabLayout$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 1613
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    .line 1861
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p2, p3

    return p2
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1799
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1800
    :goto_0
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1801
    :goto_1
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 1805
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1806
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1807
    invoke-virtual {p0, v5}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 1809
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1810
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1812
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1815
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 1818
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1819
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1820
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$500(Lcolor/support/design/widget/ColorTabLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1821
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$300(Lcolor/support/design/widget/ColorTabLayout;)Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1822
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2, v5}, Lcolor/support/design/widget/ColorTabLayout;->access$502(Lcolor/support/design/widget/ColorTabLayout;Z)Z

    .line 1823
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v2}, Lcolor/support/design/widget/ColorTabLayout;->access$300(Lcolor/support/design/widget/ColorTabLayout;)Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->requestLayout()V

    .line 1828
    :cond_5
    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mDefaultMaxLines:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1830
    invoke-virtual {p0, v5}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 1832
    :cond_6
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1833
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1835
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz p2, :cond_9

    .line 1839
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_8

    .line 1841
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 1843
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {v2, v4}, Lcolor/support/design/widget/ColorTabLayout;->dpToPx(I)I

    move-result v5

    .line 1845
    :cond_8
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v2, :cond_9

    .line 1846
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1847
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_9
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v3

    .line 1850
    :goto_5
    invoke-static {p0, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getTab()Lcolor/support/design/widget/ColorTabLayout$Tab;
    .locals 1

    .line 1854
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1700
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1702
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1707
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1709
    const-class v0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1643
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1645
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1647
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->playSoundEffect(I)V

    .line 1649
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->select()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1720
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V

    const/4 v0, 0x0

    .line 1721
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1685
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1687
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1690
    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1691
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1693
    :cond_1
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1694
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1659
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1661
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 1665
    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1668
    :cond_1
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-static {v0, p0, p1}, Lcolor/support/design/widget/ColorTabLayout;->access$400(Lcolor/support/design/widget/ColorTabLayout;Lcolor/support/design/widget/ColorTabLayout$TabView;Z)V

    .line 1672
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1673
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1675
    :cond_2
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1676
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1678
    :cond_3
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1679
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method setTab(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 1
    .param p1    # Lcolor/support/design/widget/ColorTabLayout$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1713
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1714
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    .line 1715
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 5

    .line 1725
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTab:Lcolor/support/design/widget/ColorTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 1728
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 1731
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1733
    :cond_1
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1735
    :cond_2
    iput-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1736
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 1737
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1739
    :cond_3
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 1740
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1741
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v1, 0x1020014

    .line 1744
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1745
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 1746
    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mDefaultMaxLines:I

    :cond_5
    const v1, 0x1020006

    .line 1748
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 1751
    :cond_6
    iget-object v2, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 1752
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1753
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1755
    :cond_7
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1756
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1759
    :goto_1
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1761
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    .line 1762
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcolor/support/v7/appcompat/R$layout;->design_layout_tab_icon:I

    .line 1763
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1764
    invoke-virtual {p0, v1, v2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1765
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1767
    :cond_8
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    .line 1768
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcolor/support/v7/appcompat/R$layout;->design_layout_tab_text:I

    .line 1769
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1770
    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorTabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1771
    iput-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1772
    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mDefaultMaxLines:I

    .line 1773
    invoke-static {v1}, Lcom/color/support/c/a;->a(Landroid/widget/TextView;)V

    .line 1779
    :cond_9
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget v3, v3, Lcolor/support/design/widget/ColorTabLayout;->mTabTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1780
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1782
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v1, v1, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_a

    .line 1783
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget-object v3, v3, Lcolor/support/design/widget/ColorTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1785
    :cond_a
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 1788
    :cond_b
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 1789
    :cond_c
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcolor/support/design/widget/ColorTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcolor/support/design/widget/ColorTabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_d
    :goto_2
    if-eqz v0, :cond_e

    .line 1794
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorTabLayout$TabView;->setSelected(Z)V

    return-void
.end method
