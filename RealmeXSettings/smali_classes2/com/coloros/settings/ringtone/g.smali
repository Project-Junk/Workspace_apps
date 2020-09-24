.class public final Lcom/coloros/settings/ringtone/g;
.super Ljava/lang/Object;
.source "RuntimePermissionAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/g$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/coloros/settings/ringtone/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/g;->a:Z

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 5

    const v0, 0x7f1205ae

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f12142b

    .line 109
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const v0, 0x7f1205a7

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1205a9

    .line 114
    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setHasCheckBox(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1205a8

    .line 118
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1205a6

    .line 119
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/ringtone/g$2;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/ringtone/g$2;-><init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1205b3

    const v4, 0x7f1205b2

    .line 147
    invoke-virtual {v0, v2, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setStatementLinkString(II)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/ringtone/g$1;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/ringtone/g$1;-><init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnLinkTextClickListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;

    .line 161
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->getSecurityAlertDialog()Landroid/app/Dialog;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 4

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 170
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e9

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/coloros/settings/ringtone/g;->a:Z

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    if-eqz p1, :cond_3

    .line 183
    invoke-interface {p1}, Lcom/coloros/settings/ringtone/g$a;->a()V

    :cond_3
    return-void
.end method

.method private static d(Landroid/app/Activity;)Z
    .locals 1

    .line 221
    invoke-static {p0}, Lcom/coloros/settings/ringtone/g;->e(Landroid/app/Activity;)Z

    move-result v0

    .line 222
    invoke-static {p0}, Lcom/coloros/settings/ringtone/g;->f(Landroid/app/Activity;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.runtime.permission.alert.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static f(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "local_config"

    .line 235
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "cta_dialog_should_show"

    .line 236
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/coloros/settings/ringtone/g;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/g;->b(Landroid/app/Activity;)V

    return-void

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/g;->c(Landroid/app/Activity;)V

    return-void
.end method
