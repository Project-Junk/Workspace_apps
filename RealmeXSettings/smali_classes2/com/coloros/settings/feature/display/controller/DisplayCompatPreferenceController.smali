.class public Lcom/coloros/settings/feature/display/controller/DisplayCompatPreferenceController;
.super Lcom/android/settings/core/a;
.source "DisplayCompatPreferenceController.java"


# static fields
.field public static final KEY_DISPLAY_COMPAT:Ljava/lang/String; = "key_display_compat"

.field public static final KEY_DISPLAY_COMPAT_CATEGORY:Ljava/lang/String; = "key_display_compat_category"

.field private static final TAG:Ljava/lang/String; = "DisplayCompatController"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_display_compat_category"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_display_compat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/DisplayCompatPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
