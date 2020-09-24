.class public Lcom/android/settings/enterprise/a;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# static fields
.field private static final d:Ljava/lang/String; = "com.android.settings.enterprise.a"


# instance fields
.field a:Lcom/android/settingslib/g$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/view/ViewGroup;

.field c:Ljava/lang/String;

.field private e:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    return-void
.end method

.method static a(Lcom/android/settingslib/g$a;)I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/16 p0, -0x2710

    return p0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/g$a;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 193
    iget-object v0, p2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "device_policy"

    .line 197
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 199
    iget-object v1, p2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 201
    invoke-static {p2}, Lcom/android/settings/enterprise/a;->a(Lcom/android/settingslib/g$a;)I

    move-result v1

    .line 200
    invoke-static {p0, v1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p0, p2, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    if-nez p0, :cond_2

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    .line 208
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    const/16 v1, 0x3e8

    invoke-static {p0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 209
    iget-object p0, p2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 210
    invoke-static {p2}, Lcom/android/settings/enterprise/a;->a(Lcom/android/settingslib/g$a;)I

    move-result p2

    .line 209
    invoke-virtual {v0, p0, p2}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const p0, 0x7f0a006c

    .line 213
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 214
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    .line 202
    :cond_5
    :goto_0
    iput-object v2, p2, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    iget-object p2, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    .line 1221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1222
    iget-object v1, p1, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 1223
    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1224
    iget-object v1, p1, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    .line 1226
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1228
    iget-object p1, p1, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1230
    :cond_0
    const-class p1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1231
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a0069

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1207ee

    if-nez p1, :cond_1

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "no_adjust_volume"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "no_outgoing_calls"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v7

    goto :goto_0

    :sswitch_2
    const-string v2, "policy_suspend_packages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "policy_disable_screen_capture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "policy_disable_camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v5

    goto :goto_0

    :sswitch_5
    const-string v2, "no_sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v6

    :cond_2
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 186
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_3
    const p1, 0x7f1207f4

    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_4
    const p1, 0x7f1207f2

    .line 179
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_5
    const p1, 0x7f1207f0

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_6
    const p1, 0x7f1207f3

    .line 173
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_7
    const p1, 0x7f1207f1

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_8
    const p1, 0x7f1207ef

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e01ce25 -> :sswitch_5
        -0x379078f7 -> :sswitch_4
        0x24f9a257 -> :sswitch_3
        0x546cf0fd -> :sswitch_2
        0x74422d80 -> :sswitch_1
        0x7f4c17cc -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcolor/support/v7/app/AlertDialog$Builder;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    invoke-static {v1}, Lcom/android/settings/enterprise/a;->a(Lcom/android/settingslib/g$a;)I

    move-result v1

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120bf0

    .line 101
    new-instance v1, Lcom/android/settings/enterprise/-$$Lambda$a$KXc0UiTwI1sLdZAFNkKMmoVwAR8;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/-$$Lambda$a$KXc0UiTwI1sLdZAFNkKMmoVwAR8;-><init>(Lcom/android/settings/enterprise/a;)V

    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$KXc0UiTwI1sLdZAFNkKMmoVwAR8(Lcom/android/settings/enterprise/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/enterprise/a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;
    .locals 4

    .line 82
    iput-object p2, p0, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    .line 83
    iput-object p1, p0, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    .line 84
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d0035

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/enterprise/a;->b:Landroid/view/ViewGroup;

    .line 87
    iget-object p2, p0, Lcom/android/settings/enterprise/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    iget-object v1, v1, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 1077
    iget-object v2, p0, Lcom/android/settings/enterprise/a;->a:Lcom/android/settingslib/g$a;

    invoke-static {v2}, Lcom/android/settings/enterprise/a;->a(Lcom/android/settingslib/g$a;)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/android/settings/enterprise/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/settings/enterprise/a;->a(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    const p2, 0x7f120f1b

    .line 89
    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/enterprise/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/a;->a(Lcolor/support/v7/app/AlertDialog$Builder;)V

    return-object p1
.end method

.method final a(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a006a

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    iget-object v1, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    .line 125
    invoke-static {v1, p3}, Lcom/android/settingslib/g;->a(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    .line 136
    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    .line 137
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 138
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-static {v1, v3, v4, p3}, Lcom/android/settings/m;->a(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 128
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    const-string v1, "com.android.internal.R.drawable.ic_info"

    .line 129
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p2, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v3, 0x1010435

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {p2, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 132
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move-object p2, v2

    .line 143
    :goto_1
    invoke-static {p1, p4}, Lcom/android/settings/enterprise/a;->a(Landroid/view/View;Ljava/lang/String;)V

    const/16 p4, -0x2710

    if-ne p3, p4, :cond_3

    goto :goto_2

    .line 149
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 152
    :goto_2
    iget-object p3, p0, Lcom/android/settings/enterprise/a;->e:Landroid/app/Activity;

    new-instance p4, Lcom/android/settingslib/g$a;

    invoke-direct {p4, p2, v2}, Lcom/android/settingslib/g$a;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {p3, p1, p4}, Lcom/android/settings/enterprise/a;->a(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/g$a;)V

    return-void
.end method
