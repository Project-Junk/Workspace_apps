.class final Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController$1;
.super Lcom/android/settings/notification/r;
.source "GlobalDeleteSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    .line 37
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/GlobalDeleteSoundPreferenceController;

    const/4 v1, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/r;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
