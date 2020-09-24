.class final Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;
.super Ljava/lang/Object;
.source "TopLevelMobileDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->showMobileDataSafeWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->access$000(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const/4 p2, 0x1

    .line 163
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 164
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->access$100(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;->a:Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    .line 165
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->access$200(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/2addr p2, v0

    const-string v0, "popup_gprs_dialog"

    .line 164
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
