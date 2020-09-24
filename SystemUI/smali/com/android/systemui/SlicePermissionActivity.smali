.class public Lcom/android/systemui/SlicePermissionActivity;
.super Landroid/app/Activity;
.source "SlicePermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlicePermissionActivity"


# instance fields
.field private mAllCheckbox:Landroid/widget/CheckBox;

.field private mCallingPkg:Ljava/lang/String;

.field private mProviderPkg:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 114
    :try_start_0
    const-class p1, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SlicePermissionActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/SliceManager;

    iget-object p2, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mAllCheckbox:Landroid/widget/CheckBox;

    .line 115
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 114
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/slice/SliceManager;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SlicePermissionActivity"

    const-string v0, "Illegal data, exception = "

    .line 117
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "slice_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mUri:Landroid/net/Uri;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "provider_pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 65
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SlicePermissionActivity;->mCallingPkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v3, 0x5

    const/high16 v4, 0x43fa0000    # 500.0f

    .line 66
    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/SlicePermissionActivity;->mProviderPkg:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 70
    invoke-virtual {v5, p1, v4, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f11078f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 74
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d01f0

    .line 75
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f11078c

    .line 76
    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f11078a

    .line 77
    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addSystemFlags(I)V

    .line 81
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0589

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f11078d

    .line 83
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a058a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f11078e

    .line 85
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a053a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mAllCheckbox:Landroid/widget/CheckBox;

    .line 88
    iget-object p1, p0, Lcom/android/systemui/SlicePermissionActivity;->mAllCheckbox:Landroid/widget/CheckBox;

    const v1, 0x7f11078b

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/SlicePermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SlicePermissionActivity"

    const-string v1, "Illegal data, exception = "

    .line 98
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/SlicePermissionActivity;->finish()V

    return-void
.end method
