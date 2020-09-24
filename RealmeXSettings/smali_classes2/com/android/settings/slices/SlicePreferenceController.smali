.class public Lcom/android/settings/slices/SlicePreferenceController;
.super Lcom/android/settings/core/a;
.source "SlicePreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/a;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/a/j;",
        "Lcom/android/settingslib/core/lifecycle/a/k;"
    }
.end annotation


# instance fields
.field mLiveData:Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field mSlicePreference:Lcom/android/settings/slices/SlicePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/slices/SlicePreference;

    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    .line 1051
    iget-object v1, v0, Lcom/android/settings/slices/SlicePreference;->a:Landroidx/slice/widget/SliceView;

    invoke-virtual {v1, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    .line 1052
    invoke-virtual {v0}, Lcom/android/settings/slices/SlicePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public setSliceUri(Landroid/net/Uri;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    .line 64
    iget-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    .line 67
    iget-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
