.class public final Lcom/coloros/partners/dolby/a/b;
.super Ljava/lang/Object;
.source "DolbySettingUtils.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 59
    :cond_0
    :try_start_0
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "getBluetoothName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v2, "audio"

    .line 61
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 62
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 64
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getBtDeviceName exception: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DolbySettingUtils"

    invoke-static {v1, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p0, "device_none"

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string p0, "wired_headset"

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, ""

    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static a(Z)V
    .locals 0

    .line 47
    sput-boolean p0, Lcom/coloros/partners/dolby/a/b;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/coloros/partners/dolby/a/b;->a:Z

    return v0
.end method

.method public static b()I
    .locals 1

    .line 170
    invoke-static {}, Lcom/coloros/settings/utils/bh;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p0, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v1, "audio"

    .line 1134
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "get_pid"

    .line 1139
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1140
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 93
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const-string v2, ":"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 98
    array-length v2, v1

    if-gtz v2, :cond_5

    goto/16 :goto_5

    .line 102
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    const-string v5, "DolbySettingUtils"

    if-ge v4, v3, :cond_7

    aget-object v6, v1, v4

    .line 104
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 106
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 109
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getActiveAudioAppPackages can not convert to int "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coloros/partners/dolby/a/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const-string v1, "activity"

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_8

    return-object v0

    .line 117
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 120
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 121
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 122
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 123
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 126
    :cond_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getActiveAudioAppPackages activeAudioAppList = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/coloros/partners/dolby/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_5
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/partners/dolby/activity/d;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-static {}, Lcom/coloros/settings/utils/bh;->J()Z

    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Is support sdk3.5.6 dolby ? "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DolbySettingUtils"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v2, Lcom/coloros/partners/dolby/activity/d$a;

    invoke-direct {v2}, Lcom/coloros/partners/dolby/activity/d$a;-><init>()V

    const v3, 0x7f120846

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2066
    iput-object v3, v2, Lcom/coloros/partners/dolby/activity/d$a;->b:Ljava/lang/String;

    const v3, 0x7f080526

    .line 151
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2071
    iput-object v3, v2, Lcom/coloros/partners/dolby/activity/d$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 3061
    :goto_0
    iput v5, v2, Lcom/coloros/partners/dolby/activity/d$a;->a:I

    .line 153
    invoke-virtual {v2}, Lcom/coloros/partners/dolby/activity/d$a;->a()Lcom/coloros/partners/dolby/activity/d;

    move-result-object v2

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lcom/coloros/partners/dolby/activity/d$a;

    invoke-direct {v2}, Lcom/coloros/partners/dolby/activity/d$a;-><init>()V

    const v5, 0x7f120849

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3066
    iput-object v5, v2, Lcom/coloros/partners/dolby/activity/d$a;->b:Ljava/lang/String;

    const v5, 0x7f080529

    .line 155
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3071
    iput-object v5, v2, Lcom/coloros/partners/dolby/activity/d$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    move v3, v5

    .line 4061
    :cond_1
    iput v3, v2, Lcom/coloros/partners/dolby/activity/d$a;->a:I

    .line 157
    invoke-virtual {v2}, Lcom/coloros/partners/dolby/activity/d$a;->a()Lcom/coloros/partners/dolby/activity/d;

    move-result-object v2

    .line 154
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lcom/coloros/partners/dolby/activity/d$a;

    invoke-direct {v2}, Lcom/coloros/partners/dolby/activity/d$a;-><init>()V

    const v3, 0x7f120848

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4066
    iput-object v3, v2, Lcom/coloros/partners/dolby/activity/d$a;->b:Ljava/lang/String;

    const v3, 0x7f080527

    .line 159
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4071
    iput-object v3, v2, Lcom/coloros/partners/dolby/activity/d$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 5061
    :goto_1
    iput v4, v2, Lcom/coloros/partners/dolby/activity/d$a;->a:I

    .line 161
    invoke-virtual {v2}, Lcom/coloros/partners/dolby/activity/d$a;->a()Lcom/coloros/partners/dolby/activity/d;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/coloros/partners/dolby/activity/d$a;

    invoke-direct {v1}, Lcom/coloros/partners/dolby/activity/d$a;-><init>()V

    const v2, 0x7f120847

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5066
    iput-object v2, v1, Lcom/coloros/partners/dolby/activity/d$a;->b:Ljava/lang/String;

    const v2, 0x7f080528

    .line 163
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5071
    iput-object p0, v1, Lcom/coloros/partners/dolby/activity/d$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    .line 6061
    iput p0, v1, Lcom/coloros/partners/dolby/activity/d$a;->a:I

    .line 165
    invoke-virtual {v1}, Lcom/coloros/partners/dolby/activity/d$a;->a()Lcom/coloros/partners/dolby/activity/d;

    move-result-object p0

    .line 162
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
