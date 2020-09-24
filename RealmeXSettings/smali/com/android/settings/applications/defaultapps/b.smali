.class public Lcom/android/settings/applications/defaultapps/b;
.super Lcom/android/settings/applications/defaultapps/a;
.source "DefaultAutofillPreferenceController.java"


# instance fields
.field private final d:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/a;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/b;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/b;->d:Landroid/view/autofill/AutofillManager;

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/b;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/applications/defaultapps/b;->c:I

    .line 57
    invoke-virtual {p1}, Lcom/android/settingslib/applications/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;->a()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a()Lcom/android/settingslib/applications/b;
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/settingslib/applications/b;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/b;->a:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/b;->c:I

    .line 67
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "default_autofill_main"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/b;->d:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/b;->d:Landroid/view/autofill/AutofillManager;

    .line 42
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
