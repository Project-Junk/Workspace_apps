.class public final Lcom/android/settingslib/d/s;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/s$b;,
        Lcom/android/settingslib/d/s$a;,
        Lcom/android/settingslib/d/s$d;,
        Lcom/android/settingslib/d/s$c;
    }
.end annotation


# instance fields
.field final a:Lcom/android/settingslib/d/h;

.field final b:Lcom/android/settingslib/d/e;

.field public c:Lcom/android/settingslib/d/a;

.field public d:Lcom/android/settingslib/d/j;

.field public e:Lcom/android/settingslib/d/u;

.field public f:Lcom/android/settingslib/d/x;

.field public g:Lcom/android/settingslib/d/y;

.field public h:Lcom/android/settingslib/d/l;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/d/r;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/Context;

.field private k:Lcom/android/settingslib/d/b;

.field private l:Lcom/android/settingslib/d/m;

.field private m:Lcom/android/settingslib/d/t;

.field private n:Lcom/android/settingslib/d/o;

.field private o:Lcom/android/settingslib/d/n;

.field private p:Lcom/android/settingslib/d/v;

.field private q:Lcom/android/settingslib/d/w;

.field private r:Lcom/android/settingslib/d/i;

.field private s:Lcom/android/settingslib/d/z;

.field private final t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/s$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/p;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/e;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/s;->t:Ljava/util/Collection;

    .line 116
    iput-object p1, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    .line 119
    iput-object p4, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    .line 1063
    iput-object p0, p2, Lcom/android/settingslib/d/p;->b:Lcom/android/settingslib/d/s;

    const-string p1, "LocalBluetoothProfileManager"

    const-string p2, "LocalBluetoothProfileManager construction complete"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    new-instance v1, Lcom/android/settingslib/d/s$d;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/d/s$d;-><init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/d/e;->a(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 248
    iget-object p3, p0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 235
    new-instance v0, Lcom/android/settingslib/d/s$a;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/android/settingslib/d/s$a;-><init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;Ljava/lang/String;I)V

    .line 237
    iget-object p5, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    invoke-virtual {p5, p3, v0}, Lcom/android/settingslib/d/e;->a(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 238
    iget-object p3, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    invoke-virtual {p3, p4, v0}, Lcom/android/settingslib/d/e;->a(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 239
    iget-object p3, p0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    new-instance v1, Lcom/android/settingslib/d/s$b;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/d/s$b;-><init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/d/e;->a(Ljava/lang/String;Lcom/android/settingslib/d/e$k;)V

    .line 255
    iget-object p3, p0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 11

    .line 130
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "LocalBluetoothProfileManager"

    if-eqz v1, :cond_0

    const-string v0, "supportedList is null"

    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Adding local A2DP profile"

    .line 136
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v1, Lcom/android/settingslib/d/a;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    .line 138
    iget-object v1, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    const-string v3, "A2DP"

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    if-nez v1, :cond_2

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Adding local A2DP SINK profile"

    .line 142
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lcom/android/settingslib/d/b;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/b;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    .line 144
    iget-object v1, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    const-string v3, "A2DPSink"

    const-string v4, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Adding local HEADSET profile"

    .line 148
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Lcom/android/settingslib/d/j;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/j;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    .line 150
    iget-object v6, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    const/16 v10, 0xa

    const-string v7, "HEADSET"

    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const-string v9, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    if-nez v1, :cond_4

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Adding local HfpClient profile"

    .line 156
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Lcom/android/settingslib/d/m;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/m;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    .line 158
    iget-object v6, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    const/4 v10, 0x0

    const-string v7, "HEADSET_CLIENT"

    const-string v8, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    const-string v9, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    if-nez v1, :cond_5

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Adding local MAP CLIENT profile"

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Lcom/android/settingslib/d/t;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/t;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    .line 166
    iget-object v1, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    const-string v3, "MAP Client"

    const-string v4, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    if-nez v1, :cond_6

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Adding local MAP profile"

    .line 170
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Lcom/android/settingslib/d/u;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/u;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    .line 172
    iget-object v1, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    const-string v3, "MAP"

    const-string v4, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    if-nez v1, :cond_7

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Adding local OPP profile"

    .line 175
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Lcom/android/settingslib/d/v;

    invoke-direct {v1}, Lcom/android/settingslib/d/v;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    .line 178
    iget-object v1, p0, Lcom/android/settingslib/d/s;->i:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    const-string v4, "OPP"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-nez v1, :cond_8

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Adding local Hearing Aid profile"

    .line 181
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Lcom/android/settingslib/d/l;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/l;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    .line 184
    iget-object v1, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    const-string v3, "HearingAid"

    const-string v4, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    if-nez v1, :cond_9

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Adding local HID_HOST profile"

    .line 188
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Lcom/android/settingslib/d/o;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/o;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    .line 190
    iget-object v1, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    const-string v3, "HID"

    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    if-nez v1, :cond_a

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Adding local HID_DEVICE profile"

    .line 194
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v1, Lcom/android/settingslib/d/n;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/n;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    .line 196
    iget-object v1, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    const-string v3, "HID DEVICE"

    const-string v4, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    if-nez v1, :cond_b

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Adding local PAN profile"

    .line 200
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v1, Lcom/android/settingslib/d/w;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/d/w;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    .line 202
    iget-object v1, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    const-string v3, "PAN"

    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->b(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_b
    iget-object v1, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    if-nez v1, :cond_c

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Adding local PBAP profile"

    .line 206
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Lcom/android/settingslib/d/y;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/d/y;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    .line 208
    iget-object v1, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    const-string v3, "PBAP Server"

    const-string v4, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    if-nez v1, :cond_d

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Adding local PBAP Client profile"

    .line 212
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Lcom/android/settingslib/d/x;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/x;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    .line 214
    iget-object v1, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    const-string v3, "PbapClient"

    const-string v4, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    if-nez v1, :cond_e

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Adding local SAP profile"

    .line 219
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/android/settingslib/d/z;

    iget-object v3, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/d/s;->a:Lcom/android/settingslib/d/h;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/d/z;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V

    iput-object v1, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    .line 222
    iget-object v1, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    const-string v3, "SAP"

    const-string v4, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_e
    iget-object v1, p0, Lcom/android/settingslib/d/s;->r:Lcom/android/settingslib/d/i;

    if-nez v1, :cond_f

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Adding local DUN profile"

    .line 225
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lcom/android/settingslib/d/i;

    iget-object v1, p0, Lcom/android/settingslib/d/s;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/d/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/d/s;->r:Lcom/android/settingslib/d/i;

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/d/s;->r:Lcom/android/settingslib/d/i;

    const-string v1, "DUN Server"

    const-string v2, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/d/s;->b:Lcom/android/settingslib/d/e;

    invoke-virtual {v0}, Lcom/android/settingslib/d/e;->a()V

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/s$c;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/settingslib/d/s;->t:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final declared-synchronized a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/r;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/r;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 477
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const-string v0, "LocalBluetoothProfileManager"

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current Profiles"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 484
    monitor-exit p0

    return-void

    .line 487
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 488
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 489
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 490
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 491
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    .line 492
    invoke-virtual {v0, p6}, Lcom/android/settingslib/d/j;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    if-eqz v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 499
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 500
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/android/settingslib/d/s;->l:Lcom/android/settingslib/d/m;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 505
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-eqz v0, :cond_7

    .line 506
    sget-object v0, Lcom/android/settingslib/d/a;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    .line 507
    invoke-virtual {v0, p6}, Lcom/android/settingslib/d/a;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 513
    :cond_7
    sget-object v0, Lcom/android/settingslib/d/b;->b:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    if-eqz v0, :cond_8

    .line 515
    iget-object v0, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 519
    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    if-eqz v0, :cond_9

    .line 521
    iget-object v0, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/android/settingslib/d/s;->p:Lcom/android/settingslib/d/v;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 525
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 526
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    if-eqz v0, :cond_b

    .line 528
    iget-object v0, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/android/settingslib/d/s;->n:Lcom/android/settingslib/d/o;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 532
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    invoke-virtual {v0, p6}, Lcom/android/settingslib/d/n;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/android/settingslib/d/s;->o:Lcom/android/settingslib/d/n;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_c
    if-eqz p5, :cond_d

    const-string v0, "LocalBluetoothProfileManager"

    const-string v2, "Valid PAN-NAP connection exists."

    .line 539
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_d
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    if-nez v0, :cond_f

    :cond_e
    if-eqz p5, :cond_10

    .line 542
    :cond_f
    iget-object p5, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object p5, p0, Lcom/android/settingslib/d/s;->q:Lcom/android/settingslib/d/w;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 546
    :cond_10
    iget-object p5, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    if-eqz p5, :cond_11

    iget-object p5, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    .line 547
    invoke-virtual {p5, p6}, Lcom/android/settingslib/d/u;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result p5

    if-ne p5, v1, :cond_11

    .line 548
    iget-object p5, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object p5, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 550
    iget-object p5, p0, Lcom/android/settingslib/d/s;->e:Lcom/android/settingslib/d/u;

    const/4 v0, 0x1

    invoke-virtual {p5, p6, v0}, Lcom/android/settingslib/d/u;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 553
    :cond_11
    iget-object p5, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    if-eqz p5, :cond_12

    iget-object p5, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    .line 554
    invoke-virtual {p5, p6}, Lcom/android/settingslib/d/y;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result p5

    if-ne p5, v1, :cond_12

    .line 555
    iget-object p5, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object p5, p0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 560
    :cond_12
    iget-object p5, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    if-eqz p5, :cond_13

    .line 561
    iget-object p5, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object p5, p0, Lcom/android/settingslib/d/s;->m:Lcom/android/settingslib/d/t;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 565
    :cond_13
    iget-object p5, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    if-eqz p5, :cond_14

    sget-object p5, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    .line 566
    invoke-static {p2, p5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_14

    sget-object p2, Lcom/android/settingslib/d/x;->a:[Landroid/os/ParcelUuid;

    .line 567
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 568
    iget-object p2, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p2, p0, Lcom/android/settingslib/d/s;->f:Lcom/android/settingslib/d/x;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 572
    :cond_14
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz p2, :cond_15

    .line 574
    iget-object p2, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object p2, p0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 578
    :cond_15
    iget-object p2, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    if-eqz p2, :cond_16

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 579
    iget-object p1, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object p1, p0, Lcom/android/settingslib/d/s;->s:Lcom/android/settingslib/d/z;

    invoke-interface {p4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_16
    const-string p1, "LocalBluetoothProfileManager"

    .line 584
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "New Profiles"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/settingslib/d/s;->t:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/s$c;

    .line 378
    invoke-interface {v1}, Lcom/android/settingslib/d/s$c;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/settingslib/d/s$c;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/settingslib/d/s;->t:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final c()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/settingslib/d/s;->t:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/s$c;

    .line 385
    invoke-interface {v1}, Lcom/android/settingslib/d/s$c;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Lcom/android/settingslib/d/b;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    if-eqz v0, :cond_0

    .line 1085
    iget-boolean v0, v0, Lcom/android/settingslib/d/b;->a:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settingslib/d/s;->k:Lcom/android/settingslib/d/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
