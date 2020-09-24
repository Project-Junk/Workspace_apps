.class public final Lcom/android/settings/SmsDefaultDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field private b:Z

.field private c:Lcolor/support/v7/app/AlertDialog;

.field private d:Lcom/android/settings/SmsDefaultDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, -0x1

    if-eq p2, p1, :cond_3

    if-eq p2, v0, :cond_2

    if-ltz p2, :cond_4

    .line 87
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->d:Lcom/android/settings/SmsDefaultDialog$a;

    if-eqz p1, :cond_4

    .line 1265
    iget p1, p1, Lcom/android/settings/SmsDefaultDialog$a;->a:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->d:Lcom/android/settings/SmsDefaultDialog$a;

    .line 2251
    invoke-virtual {p1, p2}, Lcom/android/settings/SmsDefaultDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SmsDefaultDialog$a$a;

    if-eqz p1, :cond_1

    .line 2253
    iget-object p1, p1, Lcom/android/settings/SmsDefaultDialog$a$a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 90
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 91
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz p1, :cond_4

    .line 80
    iget-object p1, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.mms.replace.google.mms"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SmsDefaultDialog;->b:Z

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 64
    iget-boolean v1, p0, Lcom/android/settings/SmsDefaultDialog;->b:Z

    const-string v2, "phone"

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.messaging"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1101
    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 1108
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz p1, :cond_0

    .line 1109
    iget-object p1, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    return-void

    .line 1115
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1116
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 1121
    :cond_2
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 1122
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    const v1, 0x7f1214fe

    const v3, 0x7f1303b1

    if-eqz p1, :cond_4

    .line 1126
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1129
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1128
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    .line 1130
    iget-object p1, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->a:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1138
    :cond_3
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1139
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120fc1

    .line 1140
    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f6f

    .line 1141
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120fc0

    .line 1142
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1143
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1144
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1147
    :cond_4
    new-instance p1, Lcom/android/settings/SmsDefaultDialog$a;

    invoke-direct {p1, p0}, Lcom/android/settings/SmsDefaultDialog$a;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->d:Lcom/android/settings/SmsDefaultDialog$a;

    .line 1148
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1149
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->d:Lcom/android/settings/SmsDefaultDialog$a;

    .line 1150
    invoke-virtual {p1, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120491

    .line 1151
    invoke-virtual {p1, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1152
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1153
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    .line 1154
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->d:Lcom/android/settings/SmsDefaultDialog$a;

    invoke-virtual {p1}, Lcom/android/settings/SmsDefaultDialog$a;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 68
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_7

    .line 69
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 71
    :cond_7
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    return-void
.end method
