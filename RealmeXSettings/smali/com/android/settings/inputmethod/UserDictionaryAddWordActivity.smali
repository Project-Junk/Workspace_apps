.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private a:Lcom/android/settings/inputmethod/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    instance-of v1, v0, Landroid/os/Messenger;

    if-nez v1, :cond_1

    return-void

    .line 83
    :cond_1
    check-cast v0, Landroid/os/Messenger;

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 86
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iput p1, v1, Landroid/os/Message;->what:I

    .line 89
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->a(ILandroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1

    .line 101
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->a:Lcom/android/settings/inputmethod/c;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/c;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->a(ILandroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d038b

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.USER_DICTIONARY_EDIT"

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.android.settings.USER_DICTIONARY_INSERT"

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 59
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v2, "mode"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 70
    :cond_2
    new-instance p1, Lcom/android/settings/inputmethod/c;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/settings/inputmethod/c;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->a:Lcom/android/settings/inputmethod/c;

    return-void

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported action: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->a:Lcom/android/settings/inputmethod/c;

    invoke-virtual {v0, p1}, Lcom/android/settings/inputmethod/c;->a(Landroid/os/Bundle;)V

    return-void
.end method
