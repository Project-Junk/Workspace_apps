.class public Lcom/android/settings/search/SearchResultTrampoline;
.super Landroid/app/Activity;
.source "SearchResultTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SearchResultTrampoline"

    const-string v0, "onCreate caller is null or packageName is empty"

    .line 52
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/android/settings/search/c;->a(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 63
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object p1

    .line 65
    invoke-interface {p1, p0, v0}, Lcom/android/settings/search/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:fragment_args_key"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 77
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    .line 78
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SearchResultTrampoline;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->finish()V

    return-void
.end method
