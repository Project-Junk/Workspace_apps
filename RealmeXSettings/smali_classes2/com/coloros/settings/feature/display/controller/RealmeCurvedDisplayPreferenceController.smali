.class public Lcom/coloros/settings/feature/display/controller/RealmeCurvedDisplayPreferenceController;
.super Lcom/android/settings/core/a;
.source "RealmeCurvedDisplayPreferenceController.java"


# static fields
.field public static final KEY_DISPLAY_COMPAT:Ljava/lang/String; = "realme_surface_light"

.field public static final KEY_DISPLAY_COMPAT_CATEGORY:Ljava/lang/String; = "realme_surface_light_category"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "realme_surface_light_category"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/RealmeCurvedDisplayPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
