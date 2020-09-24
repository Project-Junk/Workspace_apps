.class public Lcom/android/settingslib/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/l;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/widget/FooterPreference;


# virtual methods
.method public final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->a:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
