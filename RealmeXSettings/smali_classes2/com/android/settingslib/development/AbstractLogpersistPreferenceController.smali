.class public abstract Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "AbstractLogpersistPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/b;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field private a:Landroidx/preference/ListPreference;

.field private b:Z

.field private final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;-><init>(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;)V

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->c:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;Ljava/lang/String;)V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    const-string v0, "logd.logpersistd.enable"

    .line 1131
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "true"

    .line 1133
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "32768"

    .line 1134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1143
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1137
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "AbstractLogpersistPreferenceController"

    const-string v0, "onLogdSizeSettingUpdate, writeLogpersistOption failed."

    .line 1139
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "persist.log.tag"

    .line 224
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "Settings"

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    move p2, v1

    :cond_1
    const-string v0, "logd.logpersistd"

    const-string v2, "logcatd"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "logd.logpersistd.buffer"

    .line 252
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 254
    invoke-virtual {p0, v3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a(Z)V

    .line 256
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "persist.logd.logpersistd.buffer"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.logd.logpersistd"

    .line 257
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/d;->b()V

    :goto_0
    const/4 p1, 0x3

    if-ge v3, p1, :cond_5

    .line 260
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const-wide/16 p1, 0x64

    .line 266
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->f()V

    return-void

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    .line 234
    iput-boolean v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->b:Z

    goto :goto_2

    .line 235
    :cond_7
    iget-boolean p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->b:Z

    if-nez p1, :cond_8

    .line 237
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 240
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->c()V

    return-void

    .line 245
    :cond_8
    :goto_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "AbstractLogpersistPreferenceController"

    const-string p2, "writeLogpersistOption: set Log persist off failed."

    .line 247
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(Z)V
    .locals 5

    const-string v0, ""

    const-string v1, "persist.logd.logpersistd.buffer"

    .line 196
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logd.logpersistd.buffer"

    .line 198
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.logd.logpersistd"

    .line 199
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "stop"

    :goto_0
    const-string v2, "logd.logpersistd"

    .line 200
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/development/d;->b()V

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->f()V

    return-void

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 207
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v3, 0x64

    .line 212
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "select_logpersist"

    .line 93
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "logd.logpersistd"

    .line 152
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "logd.logpersistd.buffer"

    .line 156
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v2, v3

    :cond_3
    const-string v4, "logcatd"

    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    const-string v1, "kernel"

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "radio"

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "security"

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const-string v3, "default"

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "main"

    const-string v6, "events"

    const-string v7, "system"

    const-string v8, "crash"

    .line 171
    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    move v6, v4

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_8

    .line 172
    aget-object v7, v3, v6

    .line 173
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v4

    .line 181
    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/e$a;->select_logpersist_values:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 181
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/e$a;->select_logpersist_summaries:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 183
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_9

    .line 186
    iput-boolean v4, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->b:Z

    return-void

    .line 187
    :cond_9
    iget-boolean v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->b:Z

    if-nez v1, :cond_a

    const-string v1, "clear"

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/android/settingslib/development/d;->a()Lcom/android/settingslib/development/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/d;->b()V

    .line 191
    iput-boolean v5, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->b:Z

    :cond_a
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "select_logpersist"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 113
    iget-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a:Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AbstractLogpersistPreferenceController"

    const-string p2, "onPreferenceChange, writeLogpersistOption failed."

    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
