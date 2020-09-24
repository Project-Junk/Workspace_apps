.class final Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;
.super Lcom/android/settings/notification/r;
.source "VibrateOnTouchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/VibrateOnTouchPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/android/settings/notification/VibrateOnTouchPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    .line 36
    iput-object p1, p0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;->a:Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    const/4 v1, 0x2

    const/4 v4, 0x0

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

    .line 39
    invoke-static {p1}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
