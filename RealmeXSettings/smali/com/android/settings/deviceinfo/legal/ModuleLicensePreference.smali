.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;
.super Landroidx/preference/Preference;
.source "ModuleLicensePreference.java"


# instance fields
.field private final a:Landroid/content/pm/ModuleInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ModuleInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->a:Landroid/content/pm/ModuleInfo;

    .line 40
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->setKey(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->a:Landroid/content/pm/ModuleInfo;

    .line 50
    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/legal/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "text/html"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->a:Landroid/content/pm/ModuleInfo;

    .line 52
    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.category.DEFAULT"

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.htmlviewer"

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "ModuleLicensePreference"

    const-string v3, "Failed to find viewer"

    .line 59
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f121449

    .line 1065
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
