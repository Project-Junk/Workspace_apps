.class public Lcom/android/settings/RingtonePreference;
.super Lcom/color/support/preference/ColorJumpPreference;
.source "RingtonePreference.java"


# instance fields
.field public a:I

.field public b:Z

.field protected c:I

.field private i:Z

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "com.android.internal.R.styleable.RingtonePreference"

    .line 67
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "com.android.internal.R.styleable.RingtonePreference_ringtoneType"

    .line 68
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/RingtonePreference;->a:I

    const-string p2, "com.android.internal.R.styleable.RingtonePreference_showDefault"

    .line 70
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/RingtonePreference;->i:Z

    const-string p2, "com.android.internal.R.styleable.RingtonePreference_showSilent"

    .line 72
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/RingtonePreference;->b:Z

    .line 74
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->setIntent(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->a(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/settings/RingtonePreference;->c:I

    .line 83
    monitor-enter p0

    const/4 p1, 0x0

    .line 84
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/RingtonePreference;->j:Landroid/content/Context;

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->a()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->i:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->i:Z

    if-eqz v0, :cond_0

    .line 1108
    iget v0, p0, Lcom/android/settings/RingtonePreference;->a:I

    .line 179
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->b:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    iget v0, p0, Lcom/android/settings/RingtonePreference;->a:I

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/16 v0, 0x40

    const-string v1, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    .line 185
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/settings/RingtonePreference;->c:I

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->a(Landroid/net/Uri;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Landroid/content/Context;
    .locals 2

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/RingtonePreference;->c:I

    invoke-static {v0, v1}, Lcom/android/settings/m;->e(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RingtonePreference;->j:Landroid/content/Context;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RingtonePreference;->j:Landroid/content/Context;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorJumpPreference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 222
    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 237
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method
