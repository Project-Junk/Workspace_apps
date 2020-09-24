.class Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Lcolor/support/design/widget/ColorTabLayout;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout;)V
    .locals 0

    .line 2621
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2630
    iget-object p2, p0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget-object p2, p2, Lcolor/support/design/widget/ColorTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne p2, p1, :cond_0

    .line 2631
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    iget-boolean p0, p0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-virtual {p1, p3, p0}, Lcolor/support/design/widget/ColorTabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0

    .line 2625
    iput-boolean p1, p0, Lcolor/support/design/widget/ColorTabLayout$AdapterChangeListener;->mAutoRefresh:Z

    return-void
.end method
