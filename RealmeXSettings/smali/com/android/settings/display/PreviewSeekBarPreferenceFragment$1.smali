.class final Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->b(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->sendAccessibilityEvent(I)V

    return-void
.end method
