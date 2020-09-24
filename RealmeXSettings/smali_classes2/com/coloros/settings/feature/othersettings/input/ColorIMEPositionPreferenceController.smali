.class public Lcom/coloros/settings/feature/othersettings/input/ColorIMEPositionPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorIMEPositionPreferenceController.java"


# static fields
.field private static final KEY_IME_POSITION:Ljava/lang/String; = "ime_position"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ime_position"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorIMEPositionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
