.class final Lcom/android/settings/network/TetherPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "TetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field final synthetic b:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$a;->b:Lcom/android/settings/network/TetherPreferenceController;

    .line 254
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "airplane_mode_on"

    .line 255
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$a;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 260
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 261
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$a;->b:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->b(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "airplane_mode_on"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_1

    .line 268
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController$a;->b:Lcom/android/settings/network/TetherPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->c(Lcom/android/settings/network/TetherPreferenceController;)V

    :cond_1
    return-void
.end method
