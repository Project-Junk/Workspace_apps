.class public Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenModeSettingsFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZenCustomSettingsDialog"
.end annotation


# instance fields
.field a:Landroid/app/NotificationManager$Policy;

.field private b:Ljava/lang/String;

.field private f:Lcom/android/settings/notification/ZenModeSettings$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const-string v0, "policy"

    .line 197
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f121b8b

    return p0

    :cond_0
    const p0, 0x7f121b89

    return p0
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->a:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;)Lcom/android/settings/notification/ZenModeSettings$a;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->f:Lcom/android/settings/notification/ZenModeSettings$a;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x64c

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager$Policy;

    if-eqz p1, :cond_0

    .line 211
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->a:Landroid/app/NotificationManager$Policy;

    .line 215
    :cond_0
    new-instance p1, Lcom/android/settings/notification/ZenModeSettings$a;

    invoke-direct {p1, v0}, Lcom/android/settings/notification/ZenModeSettings$a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->f:Lcom/android/settings/notification/ZenModeSettings$a;

    .line 217
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121aca

    .line 218
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f121ac9

    new-instance v2, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$1;-><init>(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Landroid/content/Context;)V

    .line 219
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f121ac8

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 233
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d03b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 237
    new-instance v0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog$2;-><init>(Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 282
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettingsFooterPreferenceController$ZenCustomSettingsDialog;->a:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
