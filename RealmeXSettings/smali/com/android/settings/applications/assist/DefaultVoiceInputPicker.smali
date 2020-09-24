.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;
    }
.end annotation


# instance fields
.field private c:Lcom/android/settings/applications/assist/c;

.field private d:Lcom/android/internal/app/AssistUtils;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/applications/assist/c;)Landroid/content/ComponentName;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/assist/c;->f:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/android/settings/applications/assist/c;->f:Landroid/content/ComponentName;

    return-object p0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/c;->g:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/settings/applications/assist/c;->g:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 68
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    iget-object v1, v1, Lcom/android/settings/applications/assist/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    move v1, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/settings/applications/assist/c$b;

    .line 69
    iget-object v2, v5, Lcom/android/settings/applications/assist/c$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    or-int v10, v1, v6

    .line 71
    new-instance v11, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->h:I

    move-object v1, v11

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/c$a;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v10

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v8, v1

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    iget-object v1, v1, Lcom/android/settings/applications/assist/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/applications/assist/c$c;

    xor-int/lit8 v6, v8, 0x1

    .line 77
    new-instance v11, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->h:I

    move-object v1, v11

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILcom/android/settings/applications/assist/c$a;Z)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    iget-object v0, v0, Lcom/android/settings/applications/assist/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "voice_recognition_service"

    const-string/jumbo v3, "voice_interaction_service"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/c$b;

    .line 94
    iget-object v5, v1, Lcom/android/settings/applications/assist/c$b;->c:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/settings/applications/assist/c$b;->a:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/applications/assist/c$b;->h:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 100
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    iget-object v0, v0, Lcom/android/settings/applications/assist/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/assist/c$c;

    .line 107
    iget-object v1, v1, Lcom/android/settings/applications/assist/c$c;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return v4
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Lcom/android/settings/applications/assist/c;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150086

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->d:Lcom/android/internal/app/AssistUtils;

    .line 50
    new-instance v0, Lcom/android/settings/applications/assist/c;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/assist/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    .line 51
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    invoke-virtual {p1}, Lcom/android/settings/applications/assist/c;->a()V

    .line 1129
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->d:Lcom/android/internal/app/AssistUtils;

    iget v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->h:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->c:Lcom/android/settings/applications/assist/c;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Lcom/android/settings/applications/assist/c;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->a(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method
