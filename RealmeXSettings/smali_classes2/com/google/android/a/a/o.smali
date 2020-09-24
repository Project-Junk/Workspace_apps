.class public Lcom/google/android/a/a/o;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/google/android/a/a/o;

.field private static final c:Lcom/google/android/a/b/c;

.field private static final d:[I

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final r:Landroid/content/Context;

.field private final s:Landroid/content/ContentResolver;

.field private final t:Landroid/drm/DrmManagerClient;

.field private final u:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 68
    const-class v0, Lcom/google/android/a/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/a/a/o;->a:Z

    const/4 v0, 0x4

    .line 96
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/a/a/o;->d:[I

    const-string v1, "_id"

    const-string v2, "msg_box"

    const-string v3, "thread_id"

    const-string v4, "retr_txt"

    const-string v5, "sub"

    const-string v6, "ct_l"

    const-string v7, "ct_t"

    const-string v8, "m_cls"

    const-string v9, "m_id"

    const-string v10, "resp_txt"

    const-string v11, "tr_id"

    const-string v12, "ct_cls"

    const-string v13, "d_rpt"

    const-string v14, "m_type"

    const-string v15, "v"

    const-string v16, "pri"

    const-string v17, "rr"

    const-string v18, "read_status"

    const-string v19, "rpt_a"

    const-string v20, "retr_st"

    const-string v21, "st"

    const-string v22, "date"

    const-string v23, "d_tm"

    const-string v24, "exp"

    const-string v25, "m_size"

    const-string v26, "sub_cs"

    const-string v27, "retr_txt_cs"

    .line 103
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/o;->e:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "chset"

    const-string v3, "cd"

    const-string v4, "cid"

    const-string v5, "cl"

    const-string v6, "ct"

    const-string v7, "fn"

    const-string v8, "name"

    const-string v9, "text"

    .line 161
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/o;->f:[Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    sput-object v0, Lcom/google/android/a/a/o;->g:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/google/android/a/a/o;->g:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/google/android/a/a/o;->g:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/google/android/a/a/o;->g:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    sput-object v0, Lcom/google/android/a/a/o;->h:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/google/android/a/a/o;->h:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    sput-object v0, Lcom/google/android/a/a/o;->m:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/google/android/a/a/o;->m:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    sput-object v0, Lcom/google/android/a/a/o;->i:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/google/android/a/a/o;->i:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    sput-object v0, Lcom/google/android/a/a/o;->n:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/google/android/a/a/o;->n:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    sput-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/google/android/a/a/o;->j:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    sput-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    sput-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/google/android/a/a/o;->k:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    sput-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 264
    sput-object v0, Lcom/google/android/a/a/o;->l:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/google/android/a/a/o;->l:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/a/a/o;->l:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/a/a/o;->l:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    sput-object v0, Lcom/google/android/a/a/o;->q:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/google/android/a/a/o;->q:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/a/a/o;->q:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/google/android/a/a/o;->q:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lcom/google/android/a/b/c;->b()Lcom/google/android/a/b/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/o;->c:Lcom/google/android/a/b/c;

    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    .line 286
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/a/a/o;->t:Landroid/drm/DrmManagerClient;

    const-string v0, "phone"

    .line 288
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/a/a/o;->u:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/a/a/o;
    .locals 3

    .line 293
    sget-object v0, Lcom/google/android/a/a/o;->b:Lcom/google/android/a/a/o;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/google/android/a/a/o;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/a/a/o;->b:Lcom/google/android/a/a/o;

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, v0, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    sget-object v0, Lcom/google/android/a/a/o;->b:Lcom/google/android/a/a/o;

    const-string v1, "content://mms/9223372036854775807/part"

    .line 2520
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2521
    iget-object v2, v0, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 297
    new-instance v0, Lcom/google/android/a/a/o;

    invoke-direct {v0, p0}, Lcom/google/android/a/a/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/a/a/o;->b:Lcom/google/android/a/a/o;

    .line 300
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/a/a/o;->b:Lcom/google/android/a/a/o;

    return-object p0
.end method

.method private static a(Lcom/google/android/a/a/n;)Ljava/lang/String;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/google/android/a/a/n;->d()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/a/n;->d()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    .line 1495
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "PduPersister"

    const-string v1, "ISO_8859_1 must be supported!"

    .line 1498
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private a(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/a/a/e;",
            ">;Z)V"
        }
    .end annotation

    .line 1416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/a/a/e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1422
    array-length p3, p1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    return-void

    .line 1425
    :cond_1
    iget-object p3, p0, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p3

    .line 1426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    .line 1429
    invoke-virtual {p3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p3

    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p3, v3

    .line 1430
    iget-object v5, p0, Lcom/google/android/a/a/o;->u:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1432
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1437
    :cond_3
    array-length p3, p1

    :goto_1
    if-ge v1, p3, :cond_7

    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    .line 1439
    invoke-virtual {v2}, Lcom/google/android/a/a/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_5

    .line 1441
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1442
    invoke-static {v2, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1443
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1445
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1449
    :cond_5
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1450
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private a(JI[Lcom/google/android/a/a/e;)V
    .locals 6

    .line 684
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 686
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 687
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 688
    invoke-virtual {v3}, Lcom/google/android/a/a/e;->a()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    iget v3, v3, Lcom/google/android/a/a/e;->a:I

    .line 689
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "charset"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 693
    iget-object v4, p0, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v3, v0}, Lcom/google/android/a/b/e;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/a/n;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/a/n;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/b;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "content://mms/resetFilePerm/"

    const-string v6, "IOException while closing: "

    const-string v7, "PduPersister"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3151
    :try_start_0
    iget-object v0, v2, Lcom/google/android/a/a/n;->f:[B

    if-nez v0, :cond_0

    move-object v10, v9

    goto :goto_0

    .line 3155
    :cond_0
    iget-object v0, v2, Lcom/google/android/a/a/n;->f:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 3156
    iget-object v10, v2, Lcom/google/android/a/a/n;->f:[B

    iget-object v11, v2, Lcom/google/android/a/a/n;->f:[B

    array-length v11, v11

    invoke-static {v10, v8, v0, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    :goto_0
    const-string v0, "text/plain"

    .line 792
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "application/smil"

    .line 793
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "text/html"

    .line 794
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    const-string v0, "application/vnd.oma.drm.message"

    .line 4067
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v11, :cond_8

    if-eqz v3, :cond_6

    .line 807
    :try_start_1
    iget-object v0, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    const-string v12, "r"

    .line 808
    invoke-virtual {v0, v3, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 809
    :try_start_2
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_3

    if-eqz v12, :cond_2

    .line 814
    :try_start_3
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    return-void

    :cond_3
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v14, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v0

    .line 807
    :try_start_4
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v14, v13

    move-object v13, v0

    :goto_1
    if-eqz v12, :cond_5

    if-eqz v14, :cond_4

    .line 814
    :try_start_5
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-virtual {v14, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5
    :goto_2
    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catch_2
    move-exception v0

    .line 815
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Can\'t get file info for: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4187
    iget-object v13, v2, Lcom/google/android/a/a/n;->e:Landroid/net/Uri;

    .line 815
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/google/android/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/a/b/b;

    move-result-object v12
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v12, :cond_7

    goto :goto_4

    .line 821
    :cond_7
    :try_start_8
    new-instance v0, Lcom/google/android/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mimetype "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can not be converted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v12, v9

    .line 827
    :goto_4
    iget-object v0, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v0, "Error converting drm data."

    if-nez v10, :cond_f

    .line 5187
    :try_start_9
    iget-object v2, v2, Lcom/google/android/a/a/n;->e:Landroid/net/Uri;

    if-eqz v2, :cond_c

    .line 830
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    .line 840
    :cond_9
    iget-object v3, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/16 v3, 0x2000

    .line 847
    :try_start_a
    new-array v3, v3, [B

    .line 848
    :goto_5
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_14

    if-nez v11, :cond_a

    .line 850
    invoke-virtual {v4, v3, v8, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 852
    :cond_a
    invoke-virtual {v12, v3, v10}, Lcom/google/android/a/b/b;->a([BI)[B

    move-result-object v10

    if-eqz v10, :cond_b

    .line 854
    array-length v13, v10

    invoke-virtual {v4, v10, v8, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    .line 856
    :cond_b
    new-instance v3, Lcom/google/android/a/b;

    invoke-direct {v3, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    goto/16 :goto_e

    :cond_c
    :goto_6
    :try_start_b
    const-string v0, "Can\'t find data for this part."

    .line 831
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_d

    .line 886
    :try_start_c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 888
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_7
    if-eqz v12, :cond_e

    .line 899
    invoke-virtual {v12}, Lcom/google/android/a/b/b;->a()I

    .line 903
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 904
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 905
    iget-object v3, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 905
    invoke-static {v3, v4, v0, v2}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I

    :cond_e
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v2, v9

    goto/16 :goto_d

    :catch_7
    move-exception v0

    move-object v2, v9

    goto/16 :goto_e

    :cond_f
    if-nez v11, :cond_10

    .line 865
    :try_start_d
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_8

    .line 868
    :cond_10
    array-length v2, v10

    invoke-virtual {v12, v10, v2}, Lcom/google/android/a/b/b;->a([BI)[B

    move-result-object v2

    if-eqz v2, :cond_11

    .line 870
    array-length v0, v2

    invoke-virtual {v4, v2, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_8
    move-object v2, v9

    goto :goto_a

    .line 872
    :cond_11
    new-instance v2, Lcom/google/android/a/b;

    invoke-direct {v2, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v3

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object v2, v9

    move-object v4, v2

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move-object v2, v9

    move-object v4, v2

    goto/16 :goto_e

    .line 795
    :cond_12
    :goto_9
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez v10, :cond_13

    .line 797
    new-instance v2, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    :cond_13
    const-string v2, "text"

    .line 799
    new-instance v4, Lcom/google/android/a/a/e;

    invoke-direct {v4, v10}, Lcom/google/android/a/a/e;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/a/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v2, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    move-object v2, v9

    move-object v4, v2

    move-object v12, v4

    :cond_14
    :goto_a
    if-eqz v4, :cond_15

    .line 886
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v3, v0

    .line 888
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_b
    if-eqz v2, :cond_16

    .line 893
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 895
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_c
    if-eqz v12, :cond_17

    .line 899
    invoke-virtual {v12}, Lcom/google/android/a/b/b;->a()I

    .line 903
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 904
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 905
    iget-object v3, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 905
    invoke-static {v3, v4, v0, v2}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I

    :cond_17
    return-void

    .line 801
    :cond_18
    :try_start_11
    new-instance v0, Lcom/google/android/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unable to update "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v3

    move-object v12, v4

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v2, v9

    move-object v4, v2

    move-object v12, v4

    :goto_d
    :try_start_12
    const-string v3, "Failed to read/write data."

    .line 881
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    new-instance v3, Lcom/google/android/a/b;

    invoke-direct {v3, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_d
    move-exception v0

    move-object v2, v9

    move-object v4, v2

    move-object v12, v4

    :goto_e
    const-string v3, "Failed to open Input/Output stream."

    .line 878
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    new-instance v3, Lcom/google/android/a/b;

    invoke-direct {v3, v0}, Lcom/google/android/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_f
    if-eqz v4, :cond_19

    .line 886
    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v10, v0

    .line 888
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_10
    if-eqz v3, :cond_1a

    .line 893
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v4, v0

    .line 895
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_11
    if-eqz v12, :cond_1b

    .line 899
    invoke-virtual {v12}, Lcom/google/android/a/b/b;->a()I

    .line 903
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 904
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 905
    iget-object v4, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 905
    invoke-static {v4, v6, v0, v3}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I

    .line 908
    :cond_1b
    throw v2
.end method


# virtual methods
.method public final a(Lcom/google/android/a/a/f;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/a/f;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/b;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v3, :cond_2a

    const-wide/16 v4, -0x1

    .line 1192
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v6, v4

    :goto_0
    cmp-long v0, v6, v4

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    .line 1198
    sget-object v0, Lcom/google/android/a/a/o;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1199
    :cond_1
    new-instance v0, Lcom/google/android/a/b;

    const-string v2, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :cond_2
    :goto_2
    sget-object v11, Lcom/google/android/a/a/o;->c:Lcom/google/android/a/b/c;

    monitor-enter v11

    .line 1208
    :try_start_1
    sget-object v0, Lcom/google/android/a/a/o;->c:Lcom/google/android/a/b/c;

    invoke-virtual {v0, v3}, Lcom/google/android/a/b/c;->a(Landroid/net/Uri;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 1213
    :try_start_2
    sget-object v0, Lcom/google/android/a/a/o;->c:Lcom/google/android/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v12, "PduPersister"

    const-string v13, "persist1: "

    .line 1215
    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    :cond_3
    :goto_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1219
    sget-object v0, Lcom/google/android/a/a/o;->c:Lcom/google/android/a/b/c;

    invoke-virtual {v0, v3}, Lcom/google/android/a/b/c;->b(Landroid/net/Uri;)Lcom/google/android/a/b/d;

    .line 6050
    iget-object v0, v2, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    .line 1223
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    sget-object v12, Lcom/google/android/a/a/o;->n:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1227
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1228
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1229
    invoke-virtual {v0, v14}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 1231
    sget-object v9, Lcom/google/android/a/a/o;->m:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1232
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/a/a/e;->a()[B

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    iget v13, v15, Lcom/google/android/a/a/e;->a:I

    .line 1233
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1237
    :cond_5
    sget-object v9, Lcom/google/android/a/a/o;->o:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 1238
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1239
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v13

    if-eqz v13, :cond_6

    .line 1241
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1245
    :cond_7
    sget-object v9, Lcom/google/android/a/a/o;->p:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 1246
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1247
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/a/a/l;->a(I)I

    move-result v13

    if-eqz v13, :cond_8

    .line 1249
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1253
    :cond_9
    sget-object v9, Lcom/google/android/a/a/o;->q:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 1254
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1255
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/android/a/a/l;->e(I)J

    move-result-wide v13

    cmp-long v15, v13, v4

    if-eqz v15, :cond_a

    .line 1257
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 1261
    :cond_b
    new-instance v4, Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/a/a/o;->d:[I

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1264
    sget-object v5, Lcom/google/android/a/a/o;->d:[I

    array-length v9, v5

    const/4 v12, 0x0

    :goto_8
    const/16 v13, 0x89

    if-ge v12, v9, :cond_e

    aget v14, v5, v12

    const/4 v15, 0x0

    if-ne v14, v13, :cond_c

    .line 1267
    invoke-virtual {v0, v14}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 1269
    new-array v15, v8, [Lcom/google/android/a/a/e;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    goto :goto_9

    .line 1273
    :cond_c
    invoke-virtual {v0, v14}, Lcom/google/android/a/a/l;->d(I)[Lcom/google/android/a/a/e;

    move-result-object v15

    .line 1275
    :cond_d
    :goto_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1278
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1279
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/a/a/f;->b()I

    move-result v5

    const/16 v9, 0x84

    const/16 v12, 0x80

    const/16 v14, 0x82

    if-eq v5, v14, :cond_10

    if-eq v5, v9, :cond_10

    if-ne v5, v12, :cond_f

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    goto :goto_c

    :cond_10
    :goto_a
    const/16 v15, 0x97

    if-eq v5, v12, :cond_12

    if-eq v5, v14, :cond_11

    if-eq v5, v9, :cond_11

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    .line 1290
    invoke-direct {v1, v13, v0, v4, v5}, Lcom/google/android/a/a/o;->a(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1299
    invoke-direct {v1, v15, v0, v4, v8}, Lcom/google/android/a/a/o;->a(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1304
    invoke-direct {v1, v14, v0, v4, v8}, Lcom/google/android/a/a/o;->a(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    .line 1308
    invoke-direct {v1, v15, v0, v4, v5}, Lcom/google/android/a/a/o;->a(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    :goto_b
    const-wide/16 v12, 0x0

    .line 1312
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    .line 1315
    iget-object v9, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    invoke-static {v9, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v12

    .line 1317
    :cond_13
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v9, "thread_id"

    invoke-virtual {v11, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1322
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1331
    instance-of v0, v2, Lcom/google/android/a/a/g;

    if-eqz v0, :cond_23

    .line 1332
    move-object v0, v2

    check-cast v0, Lcom/google/android/a/a/g;

    .line 7064
    iget-object v0, v0, Lcom/google/android/a/a/g;->b:Lcom/google/android/a/a/j;

    if-eqz v0, :cond_23

    .line 7148
    iget-object v2, v0, Lcom/google/android/a/a/j;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v9, 0x2

    if-le v2, v9, :cond_14

    move v9, v5

    goto :goto_d

    :cond_14
    move v9, v8

    :goto_d
    move v15, v5

    move v14, v9

    move v9, v15

    :goto_e
    if-ge v9, v2, :cond_22

    .line 1344
    invoke-virtual {v0, v9}, Lcom/google/android/a/a/j;->a(I)Lcom/google/android/a/a/n;

    move-result-object v5

    .line 7164
    iget-object v8, v5, Lcom/google/android/a/a/n;->f:[B

    if-eqz v8, :cond_15

    .line 7165
    iget-object v8, v5, Lcom/google/android/a/a/n;->f:[B

    array-length v8, v8

    goto :goto_f

    :cond_15
    const/4 v8, 0x0

    :goto_f
    add-int/2addr v15, v8

    .line 7703
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 p1, v0

    const-string v0, "content://mms/"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/part"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7704
    new-instance v8, Landroid/content/ContentValues;

    move/from16 v17, v2

    const/16 v2, 0x8

    invoke-direct {v8, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8241
    iget-object v2, v5, Lcom/google/android/a/a/n;->d:Ljava/util/Map;

    const/16 v18, 0x81

    move-wide/from16 v19, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_16

    const/4 v2, 0x0

    goto :goto_10

    .line 8245
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_10
    if-eqz v2, :cond_17

    .line 7708
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "chset"

    invoke-virtual {v8, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7711
    :cond_17
    invoke-static {v5}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/n;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    const-string v6, "image/jpg"

    .line 7715
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v2, "image/jpeg"

    :cond_18
    const-string v6, "ct"

    .line 7719
    invoke-virtual {v8, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "application/smil"

    .line 7721
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, -0x1

    .line 7722
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "seq"

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7728
    :cond_19
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->g()[B

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 7729
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/a/a/n;->g()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "fn"

    .line 7730
    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7733
    :cond_1a
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->f()[B

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 7734
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/a/a/n;->f()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "name"

    .line 7735
    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7739
    :cond_1b
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->c()[B

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 7740
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->c()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 7741
    check-cast v6, Ljava/lang/String;

    const-string v7, "cd"

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7744
    :cond_1c
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->a()[B

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 7745
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->a()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 7746
    check-cast v6, Ljava/lang/String;

    const-string v7, "cid"

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7749
    :cond_1d
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->b()[B

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 7750
    invoke-virtual {v5}, Lcom/google/android/a/a/n;->b()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/a/a/o;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 7751
    check-cast v6, Ljava/lang/String;

    const-string v7, "cl"

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7754
    :cond_1e
    iget-object v6, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v0, v8}, Lcom/google/android/a/b/e;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 7759
    invoke-direct {v1, v5, v0, v2}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/n;Landroid/net/Uri;Ljava/lang/String;)V

    .line 9178
    iput-object v0, v5, Lcom/google/android/a/a/n;->e:Landroid/net/Uri;

    .line 1350
    invoke-static {v5}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/n;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "application/smil"

    .line 1351
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "text/plain"

    .line 1352
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v14, 0x0

    :cond_1f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v17

    move-wide/from16 v6, v19

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_e

    .line 7756
    :cond_20
    new-instance v0, Lcom/google/android/a/b;

    const-string v2, "Failed to persist part, return null."

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7725
    :cond_21
    new-instance v0, Lcom/google/android/a/b;

    const-string v2, "MIME type of the part must be set."

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-wide/from16 v19, v6

    goto :goto_11

    :cond_23
    move-wide/from16 v19, v6

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 1360
    :goto_11
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "text_only"

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "m_size"

    .line 1363
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_24

    .line 1364
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "m_size"

    invoke-virtual {v11, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_24
    if-eqz v10, :cond_25

    .line 1370
    iget-object v0, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3, v11}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-object v0, v3

    move-wide/from16 v6, v19

    goto :goto_12

    .line 1372
    :cond_25
    iget-object v0, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v3, v11}, Lcom/google/android/a/b/e;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1378
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1381
    :goto_12
    new-instance v2, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1382
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "mid"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1383
    iget-object v5, v1, Lcom/google/android/a/a/o;->r:Landroid/content/Context;

    iget-object v8, v1, Lcom/google/android/a/a/o;->s:Landroid/content/ContentResolver;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "content://mms/"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "/part"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1384
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1383
    invoke-static {v5, v8, v9, v2}, Lcom/google/android/a/b/e;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I

    if-nez v10, :cond_26

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1396
    :cond_26
    sget-object v2, Lcom/google/android/a/a/o;->d:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_28

    aget v8, v2, v5

    .line 1397
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/a/a/e;

    if-eqz v9, :cond_27

    .line 1399
    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/android/a/a/o;->a(JI[Lcom/google/android/a/a/e;)V

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_28
    return-object v0

    .line 1374
    :cond_29
    new-instance v0, Lcom/google/android/a/b;

    const-string v2, "persist() failed: return null."

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 1218
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1188
    :cond_2a
    new-instance v0, Lcom/google/android/a/b;

    const-string v2, "Uri may not be null."

    invoke-direct {v0, v2}, Lcom/google/android/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
