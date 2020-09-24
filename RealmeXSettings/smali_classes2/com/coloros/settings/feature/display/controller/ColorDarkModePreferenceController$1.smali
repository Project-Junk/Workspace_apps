.class final Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;
.super Ljava/lang/Object;
.source "ColorDarkModePreferenceController.java"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->showDarkModeDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;Landroid/app/Activity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;->b:Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelected(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "ColorDarkMode_switch_open_never_hint"

    invoke-static {p2, v1, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;->b:Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->access$000(Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "ColorDarkMode_change_night_mode"

    invoke-static {p2, v1, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 151
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;->b:Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->dcsState(I)V

    :cond_1
    return-void
.end method
