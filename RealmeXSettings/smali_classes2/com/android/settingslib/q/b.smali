.class public Lcom/android/settingslib/q/b;
.super Ljava/lang/Object;
.source "MediaSessions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/q/b$a;,
        Lcom/android/settingslib/q/b$b;,
        Lcom/android/settingslib/q/b$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settingslib/q/b$b;

.field private final d:Landroid/media/session/MediaSessionManager;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSession$Token;",
            "Lcom/android/settingslib/q/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/android/settingslib/q/b$a;

.field private g:Z

.field private final h:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final i:Landroid/media/IRemoteVolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/android/settingslib/q/b;

    invoke-static {v0}, Lcom/android/settingslib/q/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/q/b$a;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    .line 325
    new-instance v0, Lcom/android/settingslib/q/b$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/q/b$1;-><init>(Lcom/android/settingslib/q/b;)V

    iput-object v0, p0, Lcom/android/settingslib/q/b;->h:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 333
    new-instance v0, Lcom/android/settingslib/q/b$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/q/b$2;-><init>(Lcom/android/settingslib/q/b;)V

    iput-object v0, p0, Lcom/android/settingslib/q/b;->i:Landroid/media/IRemoteVolumeController;

    .line 68
    iput-object p1, p0, Lcom/android/settingslib/q/b;->b:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/android/settingslib/q/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settingslib/q/b$b;-><init>(Lcom/android/settingslib/q/b;Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/android/settingslib/q/b;->c:Lcom/android/settingslib/q/b$b;

    const-string p2, "media_session"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    .line 71
    iput-object p3, p0, Lcom/android/settingslib/q/b;->f:Lcom/android/settingslib/q/b$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/q/b;)Lcom/android/settingslib/q/b$a;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/q/b;->f:Lcom/android/settingslib/q/b$a;

    return-object p0
.end method

.method private a(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/settingslib/q/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    return-object v0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settingslib/q/b;->f:Lcom/android/settingslib/q/b$a;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/q/b$a;->a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1140
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/settingslib/q/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1142
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1143
    :cond_1
    sget-boolean p1, Lcom/android/settingslib/q/a;->a:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateRemoteControllerH "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/q/b;->d()V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;I)V
    .locals 3

    .line 1130
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 1131
    sget-boolean p1, Lcom/android/settingslib/q/a;->a:Z

    if-eqz p1, :cond_0

    .line 1132
    sget-object p1, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remoteVolumeChangedH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {p2}, Lcom/android/settingslib/q/c;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1132
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    .line 1136
    iget-object p0, p0, Lcom/android/settingslib/q/b;->f:Lcom/android/settingslib/q/b$a;

    invoke-interface {p0, p1}, Lcom/android/settingslib/q/b$a;->b(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/q/b;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/q/b;->a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method static synthetic a(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/settingslib/q/b;->b(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/settingslib/q/b;)Lcom/android/settingslib/q/b$b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/q/b;->c:Lcom/android/settingslib/q/b$b;

    return-object p0
.end method

.method private static b(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/android/settingslib/q/b;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/android/settingslib/q/b;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/q/b;->c:Lcom/android/settingslib/q/b$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/q/b$b;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 93
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->h:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/q/b;->c:Lcom/android/settingslib/q/b$b;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/settingslib/q/b;->g:Z

    .line 97
    invoke-direct {p0}, Lcom/android/settingslib/q/b;->d()V

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->i:Landroid/media/IRemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->registerRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 149
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActiveSessionsUpdatedH n="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 152
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    .line 153
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v4

    .line 154
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 155
    iget-object v5, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 156
    new-instance v5, Lcom/android/settingslib/q/b$c;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/settingslib/q/b$c;-><init>(Lcom/android/settingslib/q/b;Landroid/media/session/MediaController;B)V

    .line 157
    invoke-direct {p0, v1}, Lcom/android/settingslib/q/b;->a(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/settingslib/q/b$c;->c:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/android/settingslib/q/b;->c:Lcom/android/settingslib/q/b$b;

    invoke-virtual {v1, v5, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/q/b$c;

    .line 162
    invoke-static {v4}, Lcom/android/settingslib/q/b;->b(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-direct {p0, v3, v4}, Lcom/android/settingslib/q/b;->a(Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    const/4 v2, 0x1

    .line 165
    iput-boolean v2, v1, Lcom/android/settingslib/q/b$c;->b:Z

    goto :goto_0

    .line 168
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 169
    iget-object v1, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/q/b$c;

    .line 170
    iget-object v3, v1, Lcom/android/settingslib/q/b$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v3, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 171
    iget-object v3, p0, Lcom/android/settingslib/q/b;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-boolean v3, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/settingslib/q/b$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sentRemote="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/settingslib/q/b$c;->b:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    iget-boolean v3, v1, Lcom/android/settingslib/q/b$c;->b:Z

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/android/settingslib/q/b;->f:Lcom/android/settingslib/q/b$a;

    invoke-interface {v3, v0}, Lcom/android/settingslib/q/b$a;->a(Landroid/media/session/MediaSession$Token;)V

    .line 175
    iput-boolean v2, v1, Lcom/android/settingslib/q/b$c;->b:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final b()V
    .locals 2

    .line 110
    sget-boolean v0, Lcom/android/settingslib/q/a;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/q/b;->a:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/settingslib/q/b;->g:Z

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->h:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/q/b;->d:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/settingslib/q/b;->i:Landroid/media/IRemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->unregisterRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    return-void
.end method
