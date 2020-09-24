.class final Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorMasterClearPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->saleModeDisableMasterClear(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120f7e

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method
