.class public Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"

# interfaces
.implements Lcolor/support/design/widget/ColorTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2579
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 1

    .line 2588
    iget-object p0, p0, Lcolor/support/design/widget/ColorTabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcolor/support/design/widget/ColorTabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcolor/support/design/widget/ColorTabLayout$Tab;)V
    .locals 0

    return-void
.end method
