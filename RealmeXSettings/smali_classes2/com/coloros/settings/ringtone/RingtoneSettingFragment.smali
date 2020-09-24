.class public Lcom/coloros/settings/ringtone/RingtoneSettingFragment;
.super Lcom/coloros/settings/ringtone/BaseRingtoneFragment;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/color/support/c/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;,
        Lcom/coloros/settings/ringtone/RingtoneSettingFragment$c;,
        Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;


# instance fields
.field private A:Landroid/net/Uri;

.field private B:Landroid/net/Uri;

.field private C:Landroid/net/Uri;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/ringtone/f;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/ringtone/f;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroid/media/MediaPlayer;

.field private H:Landroid/media/AudioManager;

.field private I:Lcom/coloros/settings/ringtone/g;

.field private J:Landroid/content/Intent;

.field private K:Landroid/content/Context;

.field private L:Ljava/util/concurrent/ExecutorService;

.field private M:Ljava/util/concurrent/ExecutorService;

.field private N:Lcom/coloros/settings/ringtone/vibrate/a;

.field private O:Landroidx/fragment/app/FragmentActivity;

.field private P:Lcom/coloros/settings/a/a;

.field private Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/settings/ringtone/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private c:Lcom/color/support/preference/ColorJumpPreference;

.field private d:Lcom/coloros/settings/ringtone/e;

.field private e:Lcom/coloros/settings/ringtone/e;

.field private f:Lcom/coloros/settings/ringtone/e;

.field private g:Lcom/coloros/settings/ringtone/e;

.field private h:Lcom/coloros/settings/ringtone/f;

.field private i:Lcom/color/support/preference/ColorJumpPreference;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dynamic_weather_alert"

    .line 114
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a:Landroid/net/Uri;

    const-string v0, "/system/media/audio/alarms/Dynamic_Weather.ogg"

    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    .line 128
    iput v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    const/16 v0, 0x40

    .line 129
    iput v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->o:Z

    .line 132
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->p:Z

    .line 133
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q:Z

    .line 134
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->r:Z

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s:Z

    .line 136
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->t:Z

    .line 137
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->u:Z

    .line 138
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->v:Z

    .line 139
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->w:Z

    .line 140
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->x:Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    .line 143
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    .line 144
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    .line 145
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->C:Landroid/net/Uri;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->E:Ljava/util/List;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->F:Ljava/util/List;

    .line 151
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    .line 242
    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$1;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/f;)Lcom/coloros/settings/ringtone/f;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h:Lcom/coloros/settings/ringtone/f;

    return-object p1
.end method

.method private static a(Ljava/util/List;Landroid/net/Uri;)Lcom/coloros/settings/ringtone/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/ringtone/f;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/coloros/settings/ringtone/f;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1090
    :cond_0
    new-instance v1, Lcom/coloros/settings/ringtone/f;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1091
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/ringtone/f;

    .line 1092
    invoke-virtual {p1, v1}, Lcom/coloros/settings/ringtone/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_2
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 760
    invoke-interface {p2, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;->a(Lcom/coloros/settings/ringtone/f;)V

    return-void

    .line 763
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/at;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->E:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Ljava/util/List;Landroid/net/Uri;)Lcom/coloros/settings/ringtone/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->F:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Ljava/util/List;Landroid/net/Uri;)Lcom/coloros/settings/ringtone/f;

    move-result-object v0

    .line 769
    :cond_1
    invoke-interface {p2, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;->a(Lcom/coloros/settings/ringtone/f;)V

    return-void

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    :cond_3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V
    .locals 2

    .line 16263
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 16264
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16265
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 16268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingtoneSettingFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/e$a;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e$a;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/e;Lcom/coloros/settings/ringtone/f;I)V
    .locals 1

    .line 17079
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->Q:Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 17080
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/e$a;

    .line 17081
    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/settings/ringtone/e$a;->a(Lcom/coloros/settings/ringtone/e;Lcom/coloros/settings/ringtone/f;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/f;I)V
    .locals 3

    .line 16844
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/f;I)V

    .line 16849
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h:Lcom/coloros/settings/ringtone/f;

    if-nez v0, :cond_0

    .line 16850
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h:Lcom/coloros/settings/ringtone/f;

    :cond_0
    const/16 v0, 0x40

    .line 16853
    iget v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h:Lcom/coloros/settings/ringtone/f;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    .line 16856
    invoke-static {p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 16857
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f120468

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 16858
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->w:Z

    .line 16860
    :cond_1
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h:Lcom/coloros/settings/ringtone/f;

    return-void
.end method

.method private a(Lcom/coloros/settings/ringtone/e$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->Q:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1073
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->Q:Ljava/util/Set;

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcom/coloros/settings/ringtone/e;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/e;->b()V

    :cond_0
    return-void
.end method

.method private a(Lcom/coloros/settings/ringtone/f;I)V
    .locals 2

    if-eqz p1, :cond_5

    .line 14047
    iget-object v0, p1, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_1

    .line 15047
    :cond_0
    iget-object p1, p1, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 15273
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15274
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    .line 15276
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$c;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$c;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 832
    :try_start_0
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_4

    .line 833
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 834
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RingtoneSettingFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Landroid/net/Uri;)V

    return-void

    .line 822
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g()V

    .line 823
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 p1, 0x0

    .line 824
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 1063
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "com.coloros.calendar"

    .line 1064
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    .line 2104
    iget-boolean v1, v1, Lcom/coloros/settings/ringtone/vibrate/a;->a:Z

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/vibrate/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    :cond_1
    iget v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2

    .line 219
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    iget v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-virtual {v1, p1, v3, v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a(Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    iget v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    .line 3054
    invoke-virtual {v1, p1, v3, v2}, Lcom/coloros/settings/ringtone/vibrate/a;->a(Landroid/net/Uri;IZ)V

    .line 3236
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    .line 3237
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 3865
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_5

    .line 3866
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    .line 3867
    iput-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    .line 3869
    :cond_5
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    .line 3870
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 3871
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3872
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3873
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3874
    iget v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    if-ne v1, v2, :cond_6

    .line 3875
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    .line 3876
    :cond_6
    iget v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    if-ne v1, v3, :cond_7

    .line 3877
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    .line 3878
    :cond_7
    iget v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 3879
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 226
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v1, v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 227
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 228
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Landroid/net/Uri;)Z
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/media/MediaPlayer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 919
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "_data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 922
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 924
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://media/external/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 925
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    .line 926
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    const/4 v3, 0x1

    .line 930
    :try_start_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    move-object v2, v0

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    .line 937
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    :goto_3
    :try_start_3
    const-string v4, "RingtoneSettingFragment"

    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occur, e = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    return-object v2

    .line 946
    :cond_7
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 951
    :cond_8
    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v1, :cond_9

    .line 937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 940
    :cond_9
    throw p0

    :cond_a
    :goto_6
    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    .line 895
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 896
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    .line 897
    sget-object v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 898
    sget-object p1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    .line 900
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 901
    iget p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    const-string v1, "vibrate_type_for_linearmotor_vibrate"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/f;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/f;I)V

    return-void
.end method

.method private static b(Lcom/coloros/settings/ringtone/e;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1107
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/e;->a()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/g;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->I:Lcom/coloros/settings/ringtone/g;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/e;)V

    .line 446
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/e;)V

    .line 447
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/e;)V

    .line 448
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b(Lcom/coloros/settings/ringtone/e;)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    const-string v1, "ringtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    const-string v1, "ringtone_sim2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->x:Z

    return v0
.end method

.method static synthetic e(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    const-string v1, "alarm_sound_for_linearmotor_vibrate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 886
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    return p0
.end method

.method static synthetic k(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    return p0
.end method

.method static synthetic l(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic o(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/color/support/preference/ColorJumpPreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c:Lcom/color/support/preference/ColorJumpPreference;

    return-object p0
.end method

.method static synthetic p(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    return p0
.end method

.method static synthetic q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    return-object p0
.end method

.method static synthetic r(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    return-object v0
.end method

.method static synthetic s(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->y:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    move/from16 v4, p2

    if-ne v4, v3, :cond_11

    const-string v4, "sim_picker"

    .line 961
    invoke-static {v2, v4}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "online_ring_string"

    .line 963
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 964
    invoke-static {v2, v6}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 965
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    :cond_1
    const-string v6, "vibrate_type_for_linearmotor_vibrate"

    const-string v7, "android.intent.extra.ringtone.PICKED_URI"

    const/4 v8, 0x0

    if-nez v0, :cond_4

    const-string v0, "SELECT_PATH"

    .line 16029
    invoke-static {v2, v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16030
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_3

    .line 16032
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 16033
    iput-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    .line 16034
    iput-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    .line 16035
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16036
    iget v7, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 16038
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16040
    :cond_2
    iget-object v4, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-static {v4}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e;)V

    .line 16041
    iget-object v4, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    invoke-static {v4}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e;)V

    .line 16042
    iget-object v4, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    invoke-static {v4}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e;)V

    .line 16043
    iget-object v4, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    invoke-static {v4}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e;)V

    .line 16044
    new-instance v4, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$6;

    invoke-direct {v4, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$6;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {v1, v0, v4}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/net/Uri;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;)V

    .line 16052
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    .line 16054
    :cond_3
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    return-void

    :cond_4
    const/16 v9, 0x64

    if-ne v9, v0, :cond_e

    const-string v0, "audio_id"

    .line 971
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v9, v0

    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_5

    .line 973
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    return-void

    .line 976
    :cond_5
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v0, "duration"

    const-string v9, "_data"

    .line 979
    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x0

    .line 982
    :try_start_0
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 983
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v9, :cond_9

    .line 991
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 984
    :cond_7
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_8

    .line 991
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v10, "RingtoneSettingFragment"

    .line 988
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error occur, e = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_9

    goto :goto_0

    .line 995
    :cond_9
    :goto_2
    iput-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    .line 996
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 997
    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 998
    iget v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v5, :cond_a

    .line 1000
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    :cond_a
    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1003
    iget v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_b

    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120468

    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1006
    :cond_b
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :goto_3
    if-eqz v9, :cond_c

    .line 991
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_c
    throw v0

    .line 1008
    :cond_d
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    return-void

    :cond_e
    const/16 v4, 0x3ea

    if-ne v0, v4, :cond_f

    .line 1011
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->I:Lcom/coloros/settings/ringtone/g;

    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/ringtone/g;->a(Landroid/app/Activity;)V

    return-void

    :cond_f
    const/16 v4, 0xa

    if-ne v4, v0, :cond_11

    .line 1013
    iget v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    const-string v4, "final_vibrate_type"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    .line 1014
    iget v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    .line 16059
    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_vibrate_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1015
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1016
    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    if-eqz v2, :cond_10

    .line 1017
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1019
    :cond_10
    iget v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    iget-object v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1021
    iget-object v0, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i:Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_11

    .line 1022
    iget v2, v1, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-static {v2}, Lcom/coloros/settings/ringtone/vibrate/a;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onAttach(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "intent"

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    .line 353
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-static {p1, v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 178
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/vibrate/a;->a()V

    .line 179
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 p1, 0x1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCompletion, IllegalStateException :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneSettingFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c()V

    :cond_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    const p2, 0x7f1500e1

    .line 287
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->addPreferencesFromResource(I)V

    .line 4358
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    .line 4359
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    .line 4360
    new-instance p2, Lcom/coloros/settings/ringtone/vibrate/a;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/coloros/settings/ringtone/vibrate/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->N:Lcom/coloros/settings/ringtone/vibrate/a;

    .line 4361
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    .line 4363
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v0, "package_name"

    invoke-static {p2, v0}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.contacts"

    .line 4364
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->t:Z

    .line 4365
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "sim_picker_dialog_show"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->p:Z

    .line 4366
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const/4 v2, -0x1

    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    .line 4367
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v3, "color_ringtone_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    .line 4368
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v3, "extra_oppo_notification_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4369
    iget v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    if-eq v0, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->o:Z

    .line 4371
    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v6, "NO_ONLINE"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j:Z

    .line 4372
    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    const-string v6, "com.nearme.themespace"

    invoke-static {v3, v6}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    const-string v6, "com.nearme.themestore"

    .line 4373
    invoke-static {v3, v6}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    const-string v6, "com.heytap.themestore"

    .line 4374
    invoke-static {v3, v6}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4375
    :cond_1
    iput-boolean v5, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j:Z

    .line 4378
    :cond_2
    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const-string v6, "key_result_uri"

    .line 4382
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4383
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4384
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 4386
    :cond_3
    iput-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    goto :goto_1

    .line 4389
    :cond_4
    iget-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6}, Lcom/coloros/settings/utils/at;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    .line 4392
    :goto_1
    iget-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v7, "android.intent.entry.ringtone.EXISTING_URI"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    .line 4393
    iget-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v7, "android.intent.entry.application.EXISTING"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 4395
    sget-object v7, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a:Landroid/net/Uri;

    iget-object v8, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->v:Z

    .line 4396
    iget-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v8, "need_show_dynamic_weather_alert"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->u:Z

    if-eqz v6, :cond_5

    .line 4398
    iget-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 4399
    iput-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    goto :goto_2

    .line 4402
    :cond_5
    iget-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    iput-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    if-eqz v7, :cond_6

    .line 4403
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://media/external/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v1

    :goto_3
    iput-boolean v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->r:Z

    .line 4406
    iget v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    if-eq v7, v2, :cond_9

    if-eq v7, v5, :cond_8

    if-ne v7, v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v5

    .line 4407
    :goto_5
    iput-boolean v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q:Z

    .line 4408
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    instance-of v7, v2, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v7, :cond_9

    .line 4409
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    iget v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    invoke-virtual {v2, v7}, Landroidx/appcompat/app/AppCompatActivity;->setVolumeControlStream(I)V

    .line 4413
    :cond_9
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v7, "from_type_for_linearmotor_vibrate"

    invoke-static {v2, v7}, Lcom/coloros/settings/ringtone/a;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    .line 4414
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d()Z

    move-result v2

    const/16 v7, 0x40

    if-eqz v2, :cond_a

    .line 4415
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->D:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_vibrate_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    goto :goto_6

    .line 4417
    :cond_a
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->J:Landroid/content/Intent;

    const-string v8, "vibrate_type_for_linearmotor_vibrate"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    .line 4419
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "mHasSilentItem: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mExistUri: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mEntryUri: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mIsEntryApp: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "RingtoneSettingFragment"

    invoke-static {v6, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "mPackageName: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mSimPicker: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->p:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mRingToneType: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mColorRingToneType: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsNoOnline: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mOppoNotificationType: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4489
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n:Z

    if-eqz v0, :cond_c

    .line 4490
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    if-eqz v0, :cond_b

    .line 4491
    new-instance v0, Lcom/coloros/settings/ringtone/f;

    const v2, 0x7f121272

    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->A:Landroid/net/Uri;

    invoke-direct {v0, v2, v6}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4493
    :cond_b
    new-instance v0, Lcom/coloros/settings/ringtone/f;

    const v2, 0x7f12127a

    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4495
    :cond_c
    iget v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    .line 4497
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 4499
    :cond_d
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4501
    :goto_7
    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->E:Ljava/util/List;

    .line 4502
    iget p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    if-ne p2, v5, :cond_e

    .line 4503
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->F:Ljava/util/List;

    goto :goto_8

    .line 4505
    :cond_e
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/coloros/settings/utils/at;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->F:Ljava/util/List;

    :goto_8
    const-string p2, "vibrate_category_key"

    .line 4686
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 4687
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p2, "vibrate_key"

    .line 4688
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/color/support/preference/ColorJumpPreference;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i:Lcom/color/support/preference/ColorJumpPreference;

    .line 4689
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i:Lcom/color/support/preference/ColorJumpPreference;

    const v0, 0x7f12094b

    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/color/support/preference/ColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 4690
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i:Lcom/color/support/preference/ColorJumpPreference;

    iget v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m:I

    invoke-static {v0}, Lcom/coloros/settings/ringtone/vibrate/a;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4691
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i:Lcom/color/support/preference/ColorJumpPreference;

    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-virtual {p2, v0}, Lcom/color/support/preference/ColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_9

    .line 4703
    :cond_f
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :goto_9
    const-string p2, "ringtone_default_category_key"

    .line 4708
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    .line 4709
    new-instance v0, Lcom/coloros/settings/ringtone/e;

    invoke-direct {v0, p2}, Lcom/coloros/settings/ringtone/e;-><init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    .line 4711
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4712
    iget-boolean v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->t:Z

    if-eqz v2, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_a

    .line 4717
    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/at;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->C:Landroid/net/Uri;

    .line 4718
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->C:Landroid/net/Uri;

    new-instance v2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {p0, v0, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/net/Uri;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;)V

    goto :goto_b

    .line 4713
    :cond_11
    :goto_a
    iput-boolean v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s:Z

    .line 4714
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/settings/ringtone/e;->a(Landroidx/preference/PreferenceScreen;)V

    .line 4715
    iput-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    .line 4753
    :goto_b
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f()Z

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x7f0d0226

    .line 4754
    invoke-virtual {p2, v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->setLayoutResource(I)V

    :cond_12
    const-string p2, "ringtone_custom_category_key"

    .line 5622
    invoke-virtual {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 5623
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->o:Z

    if-eqz v0, :cond_13

    .line 5624
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_e

    :cond_13
    const-string v0, "from_filemanager"

    .line 5628
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c:Lcom/color/support/preference/ColorJumpPreference;

    .line 5629
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c:Lcom/color/support/preference/ColorJumpPreference;

    const v2, 0x7f121275

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorJumpPreference;->setTitle(I)V

    .line 5630
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c:Lcom/color/support/preference/ColorJumpPreference;

    new-instance v2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 5647
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->r:Z

    if-eqz v0, :cond_14

    .line 5648
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->z:Landroid/net/Uri;

    new-instance v2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {p0, v0, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/net/Uri;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;)V

    goto :goto_c

    .line 5658
    :cond_14
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c:Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_c
    const-string v0, "from_network"

    .line 5661
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    .line 5662
    iget-boolean v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j:Z

    if-eqz v2, :cond_15

    .line 5663
    invoke-virtual {p2, v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_d

    :cond_15
    const v2, 0x7f121276

    .line 5665
    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorJumpPreference;->setTitle(I)V

    .line 5666
    new-instance v2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$3;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 5680
    :goto_d
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f()Z

    move-result v0

    if-nez v0, :cond_16

    .line 5681
    invoke-virtual {p2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 6521
    :cond_16
    :goto_e
    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->u:Z

    if-eqz p2, :cond_18

    .line 6524
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 6525
    new-instance v0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1215f3

    .line 6526
    invoke-virtual {v0, v2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->setTitle(I)V

    .line 6527
    new-instance v2, Lcom/coloros/settings/ringtone/e;

    invoke-direct {v2, v0}, Lcom/coloros/settings/ringtone/e;-><init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V

    iput-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    .line 6528
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->b(Landroidx/preference/PreferenceScreen;)V

    .line 6530
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6531
    new-instance v0, Lcom/coloros/settings/ringtone/f;

    const v2, 0x7f121603

    invoke-virtual {p0, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->b:Landroid/net/Uri;

    const v6, 0x7f1215f2

    invoke-virtual {p0, v6}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v3, v6}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6532
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->a(Ljava/util/List;)V

    .line 6533
    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->v:Z

    if-eqz p2, :cond_17

    .line 6534
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {p2, v1}, Lcom/coloros/settings/ringtone/e;->b(I)V

    .line 6536
    :cond_17
    new-instance p2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$8;

    invoke-direct {p2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$8;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e$a;)V

    .line 6547
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g:Lcom/coloros/settings/ringtone/e;

    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$9;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$9;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    .line 7051
    iput-object v0, p2, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    .line 7556
    :cond_18
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 7557
    new-instance v0, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;-><init>(Landroid/content/Context;)V

    .line 7558
    new-instance v2, Lcom/coloros/settings/ringtone/e;

    invoke-direct {v2, v0}, Lcom/coloros/settings/ringtone/e;-><init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V

    iput-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    .line 7559
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->b(Landroidx/preference/PreferenceScreen;)V

    .line 7561
    iget p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    const v0, 0x7f121278

    const v2, 0x7f121279

    if-ne p2, v5, :cond_19

    .line 7562
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {p2, v2}, Lcom/coloros/settings/ringtone/e;->a(I)V

    goto :goto_f

    :cond_19
    if-ne p2, v4, :cond_1a

    .line 7564
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/ringtone/e;->a(I)V

    goto :goto_f

    .line 7566
    :cond_1a
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    const v3, 0x7f12127c

    invoke-virtual {p2, v3}, Lcom/coloros/settings/ringtone/e;->a(I)V

    .line 7568
    :goto_f
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->E:Ljava/util/List;

    invoke-virtual {p2, v3}, Lcom/coloros/settings/ringtone/e;->a(Ljava/util/List;)V

    .line 7569
    new-instance p2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;

    invoke-direct {p2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e$a;)V

    .line 7580
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    new-instance v3, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$11;

    invoke-direct {v3, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$11;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    .line 8051
    iput-object v3, p2, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    .line 8589
    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q:Z

    if-eqz p2, :cond_1d

    .line 8592
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 8593
    new-instance v3, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;

    iget-object v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;-><init>(Landroid/content/Context;)V

    .line 8594
    iget v6, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k:I

    if-ne v6, v5, :cond_1b

    .line 8595
    invoke-virtual {v3, v0}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->setTitle(I)V

    goto :goto_10

    :cond_1b
    if-ne v6, v4, :cond_1c

    .line 8597
    invoke-virtual {v3, v2}, Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;->setTitle(I)V

    .line 8599
    :cond_1c
    :goto_10
    new-instance v0, Lcom/coloros/settings/ringtone/e;

    invoke-direct {v0, v3}, Lcom/coloros/settings/ringtone/e;-><init>(Lcom/coloros/settings/ringtone/OppoRadioPreferencesGroup;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    .line 8600
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->b(Landroidx/preference/PreferenceScreen;)V

    .line 8601
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->F:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/ringtone/e;->a(Ljava/util/List;)V

    .line 8602
    new-instance p2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$12;

    invoke-direct {p2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$12;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    invoke-direct {p0, p2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/e$a;)V

    .line 8613
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$13;

    invoke-direct {v0, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$13;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    .line 9051
    iput-object v0, p2, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    .line 9815
    :cond_1d
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 9816
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->K:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 9817
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 10791
    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->t:Z

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    if-eqz p2, :cond_1e

    .line 10792
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->C:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 10793
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {p2, v1}, Lcom/coloros/settings/ringtone/e;->b(I)V

    goto :goto_11

    .line 10798
    :cond_1e
    iget-boolean p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->r:Z

    if-nez p2, :cond_20

    .line 10800
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/ringtone/e;->a(Landroid/net/Uri;)I

    move-result p2

    if-ltz p2, :cond_1f

    .line 10802
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->e:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->b(I)V

    goto :goto_11

    .line 10805
    :cond_1f
    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    if-eqz p2, :cond_20

    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q:Z

    if-eqz v0, :cond_20

    .line 10806
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Lcom/coloros/settings/ringtone/e;->a(Landroid/net/Uri;)I

    move-result p2

    if-ltz p2, :cond_20

    .line 10808
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f:Lcom/coloros/settings/ringtone/e;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/ringtone/e;->b(I)V

    :cond_20
    :goto_11
    if-eqz p1, :cond_21

    const-string p2, "state_dialog"

    .line 296
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->x:Z

    .line 298
    :cond_21
    iget-boolean p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->x:Z

    if-nez p1, :cond_22

    .line 299
    new-instance p1, Lcom/coloros/settings/ringtone/g;

    invoke-direct {p1}, Lcom/coloros/settings/ringtone/g;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->I:Lcom/coloros/settings/ringtone/g;

    .line 300
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->I:Lcom/coloros/settings/ringtone/g;

    iget-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->O:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/ringtone/g;->a(Landroid/app/Activity;)V

    .line 301
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->I:Lcom/coloros/settings/ringtone/g;

    new-instance p2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;

    invoke-direct {p2, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V

    .line 11063
    iput-object p2, p1, Lcom/coloros/settings/ringtone/g;->b:Lcom/coloros/settings/ringtone/g$a;

    :cond_22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 11338
    new-instance p2, Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->P:Lcom/coloros/settings/a/a;

    .line 11339
    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050063

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a020e

    .line 11340
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 11342
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    const-string v0, "Error occur, e = "

    const-string v1, "RingtoneSettingFragment"

    .line 460
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 461
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->L:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    .line 466
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->M:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 473
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 480
    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    .line 482
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g()V

    .line 483
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 484
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onDestroyView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onError :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RingtoneSettingFragment"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->G:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 437
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onPause()V

    .line 438
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c()V

    .line 439
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->P:Lcom/coloros/settings/a/a;

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 427
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onResume()V

    .line 428
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->P:Lcom/coloros/settings/a/a;

    .line 12089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->P:Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 13085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->P:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 314
    iget-boolean v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->x:Z

    const-string v1, "state_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    invoke-super {p0, p1}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->B:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "key_result_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 453
    invoke-super {p0}, Lcom/coloros/settings/ringtone/BaseRingtoneFragment;->onStop()V

    .line 454
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->g()V

    .line 455
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->H:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->R:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method
