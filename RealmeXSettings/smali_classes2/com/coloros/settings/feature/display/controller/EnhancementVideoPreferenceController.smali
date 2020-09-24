.class public Lcom/coloros/settings/feature/display/controller/EnhancementVideoPreferenceController;
.super Lcom/android/settings/core/a;
.source "EnhancementVideoPreferenceController.java"


# static fields
.field public static final KEY_VIDEO_DISPLAY:Ljava/lang/String; = "key_video_display_enhancement"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/EnhancementVideoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
