.class public final Lcom/android/settings/applications/assist/b;
.super Lcom/android/settings/applications/defaultapps/a;
.source "DefaultAssistPreferenceController.java"


# instance fields
.field private final d:Lcom/android/internal/app/AssistUtils;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/a;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/applications/assist/b;->f:Ljava/lang/String;

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/android/settings/applications/assist/b;->e:Z

    .line 52
    new-instance p2, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/assist/b;->d:Lcom/android/internal/app/AssistUtils;

    .line 54
    iget-object p1, p0, Lcom/android/settings/applications/assist/b;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.ROLE_NAME"

    const-string v0, "android.app.role.ASSISTANT"

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/b;->g:Landroid/content/Intent;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/settings/applications/assist/b;->g:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;
    .locals 4

    .line 66
    iget-boolean p1, p0, Lcom/android/settings/applications/assist/b;->e:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/assist/b;->d:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/b;->c:I

    invoke-virtual {p1, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 73
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/android/settings/applications/assist/b;->a:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/settings/applications/assist/b;->a:Landroid/content/pm/PackageManager;

    .line 1121
    new-instance v3, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v2, v1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 1123
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_0

    .line 1126
    :cond_3
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_4

    return-object v0

    .line 85
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    .line 86
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final a()Lcom/android/settingslib/applications/b;
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/assist/b;->d:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/b;->c:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/b;

    iget-object v2, p0, Lcom/android/settings/applications/assist/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/assist/b;->a:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/assist/b;->c:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v1
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/assist/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default_assist"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/settings/applications/assist/b;->g:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/applications/assist/b;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/assist/b;->g:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isAvailable()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/assist/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
