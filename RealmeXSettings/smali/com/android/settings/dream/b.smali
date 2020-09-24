.class public final Lcom/android/settings/dream/b;
.super Lcom/android/settingslib/core/a;
.source "WhenToDreamPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settingslib/i/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/android/settingslib/i/a;->a(Landroid/content/Context;)Lcom/android/settingslib/i/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/b;->a:Lcom/android/settingslib/i/a;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "when_to_start"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/dream/b;->a:Lcom/android/settingslib/i/a;

    invoke-virtual {v0}, Lcom/android/settingslib/i/a;->c()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dream/DreamSettings;->b(I)I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
