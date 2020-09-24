.class public Lcom/android/settings/slices/SlicePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "SlicePreference.java"


# instance fields
.field a:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040503

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/slices/SlicePreference;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f0a061c

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/slices/SlicePreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreference;->a:Landroidx/slice/widget/SliceView;

    .line 46
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->a:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->showTitleItems(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->a:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    return-void
.end method
