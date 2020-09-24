.class public final Lcom/google/b/f;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/b/f$a;
    }
.end annotation


# static fields
.field private static final r:Lcom/google/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/b/b/d;

.field final c:Lcom/google/b/e;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Ljava/lang/String;

.field final m:I

.field final n:I

.field final o:Lcom/google/b/t;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/google/b/c/a<",
            "*>;",
            "Lcom/google/b/f$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/b/c/a<",
            "*>;",
            "Lcom/google/b/u<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/google/b/b/c;

.field private final v:Lcom/google/b/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/b/c/a;->a(Ljava/lang/Class;)Lcom/google/b/c/a;

    move-result-object v0

    sput-object v0, Lcom/google/b/f;->r:Lcom/google/b/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 186
    sget-object v1, Lcom/google/b/b/d;->a:Lcom/google/b/b/d;

    sget-object v2, Lcom/google/b/d;->a:Lcom/google/b/d;

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/b/t;->a:Lcom/google/b/t;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 186
    invoke-direct/range {v0 .. v17}, Lcom/google/b/f;-><init>(Lcom/google/b/b/d;Lcom/google/b/e;Ljava/util/Map;ZZZZZZZLcom/google/b/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/b/b/d;Lcom/google/b/e;Ljava/util/Map;ZZZZZZZLcom/google/b/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/d;",
            "Lcom/google/b/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/h<",
            "*>;>;ZZZZZZZ",
            "Lcom/google/b/t;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/b/v;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p10

    move-object/from16 v6, p11

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, v0, Lcom/google/b/f;->s:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, Lcom/google/b/f;->t:Ljava/util/Map;

    .line 203
    iput-object v1, v0, Lcom/google/b/f;->b:Lcom/google/b/b/d;

    .line 204
    iput-object v2, v0, Lcom/google/b/f;->c:Lcom/google/b/e;

    .line 205
    iput-object v3, v0, Lcom/google/b/f;->d:Ljava/util/Map;

    .line 206
    new-instance v7, Lcom/google/b/b/c;

    invoke-direct {v7, p3}, Lcom/google/b/b/c;-><init>(Ljava/util/Map;)V

    iput-object v7, v0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    move v3, p4

    .line 207
    iput-boolean v3, v0, Lcom/google/b/f;->e:Z

    .line 208
    iput-boolean v4, v0, Lcom/google/b/f;->f:Z

    move/from16 v3, p6

    .line 209
    iput-boolean v3, v0, Lcom/google/b/f;->g:Z

    move/from16 v3, p7

    .line 210
    iput-boolean v3, v0, Lcom/google/b/f;->h:Z

    move/from16 v3, p8

    .line 211
    iput-boolean v3, v0, Lcom/google/b/f;->i:Z

    move/from16 v3, p9

    .line 212
    iput-boolean v3, v0, Lcom/google/b/f;->j:Z

    .line 213
    iput-boolean v5, v0, Lcom/google/b/f;->k:Z

    .line 214
    iput-object v6, v0, Lcom/google/b/f;->o:Lcom/google/b/t;

    move-object/from16 v3, p12

    .line 215
    iput-object v3, v0, Lcom/google/b/f;->l:Ljava/lang/String;

    move/from16 v3, p13

    .line 216
    iput v3, v0, Lcom/google/b/f;->m:I

    move/from16 v3, p14

    .line 217
    iput v3, v0, Lcom/google/b/f;->n:I

    move-object/from16 v3, p15

    .line 218
    iput-object v3, v0, Lcom/google/b/f;->p:Ljava/util/List;

    move-object/from16 v3, p16

    .line 219
    iput-object v3, v0, Lcom/google/b/f;->q:Ljava/util/List;

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    sget-object v7, Lcom/google/b/b/a/n;->Y:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v7, Lcom/google/b/b/a/h;->a:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p17

    .line 231
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    sget-object v7, Lcom/google/b/b/a/n;->D:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v7, Lcom/google/b/b/a/n;->m:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v7, Lcom/google/b/b/a/n;->g:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v7, Lcom/google/b/b/a/n;->i:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v7, Lcom/google/b/b/a/n;->k:Lcom/google/b/v;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object v7, Lcom/google/b/t;->a:Lcom/google/b/t;

    if-ne v6, v7, :cond_0

    .line 1367
    sget-object v6, Lcom/google/b/b/a/n;->t:Lcom/google/b/u;

    goto :goto_0

    .line 1369
    :cond_0
    new-instance v6, Lcom/google/b/f$3;

    invoke-direct {v6}, Lcom/google/b/f$3;-><init>()V

    .line 240
    :goto_0
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Long;

    invoke-static {v7, v8, v6}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    if-eqz v5, :cond_1

    .line 2311
    sget-object v9, Lcom/google/b/b/a/n;->v:Lcom/google/b/u;

    goto :goto_1

    .line 2313
    :cond_1
    new-instance v9, Lcom/google/b/f$1;

    invoke-direct {v9, p0}, Lcom/google/b/f$1;-><init>(Lcom/google/b/f;)V

    .line 241
    :goto_1
    invoke-static {v7, v8, v9}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Float;

    if-eqz v5, :cond_2

    .line 2335
    sget-object v5, Lcom/google/b/b/a/n;->u:Lcom/google/b/u;

    goto :goto_2

    .line 2337
    :cond_2
    new-instance v5, Lcom/google/b/f$2;

    invoke-direct {v5, p0}, Lcom/google/b/f$2;-><init>(Lcom/google/b/f;)V

    .line 243
    :goto_2
    invoke-static {v7, v8, v5}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v5, Lcom/google/b/b/a/n;->x:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v5, Lcom/google/b/b/a/n;->o:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v5, Lcom/google/b/b/a/n;->q:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2388
    new-instance v7, Lcom/google/b/f$4;

    invoke-direct {v7, v6}, Lcom/google/b/f$4;-><init>(Lcom/google/b/u;)V

    .line 2396
    invoke-virtual {v7}, Lcom/google/b/f$4;->a()Lcom/google/b/u;

    move-result-object v7

    .line 248
    invoke-static {v5, v7}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2400
    new-instance v7, Lcom/google/b/f$5;

    invoke-direct {v7, v6}, Lcom/google/b/f$5;-><init>(Lcom/google/b/u;)V

    .line 2423
    invoke-virtual {v7}, Lcom/google/b/f$5;->a()Lcom/google/b/u;

    move-result-object v6

    .line 249
    invoke-static {v5, v6}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v5, Lcom/google/b/b/a/n;->s:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v5, Lcom/google/b/b/a/n;->z:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v5, Lcom/google/b/b/a/n;->F:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v5, Lcom/google/b/b/a/n;->H:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-class v5, Ljava/math/BigDecimal;

    sget-object v6, Lcom/google/b/b/a/n;->B:Lcom/google/b/u;

    invoke-static {v5, v6}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-class v5, Ljava/math/BigInteger;

    sget-object v6, Lcom/google/b/b/a/n;->C:Lcom/google/b/u;

    invoke-static {v5, v6}, Lcom/google/b/b/a/n;->a(Ljava/lang/Class;Lcom/google/b/u;)Lcom/google/b/v;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v5, Lcom/google/b/b/a/n;->J:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v5, Lcom/google/b/b/a/n;->L:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v5, Lcom/google/b/b/a/n;->P:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v5, Lcom/google/b/b/a/n;->R:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v5, Lcom/google/b/b/a/n;->W:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v5, Lcom/google/b/b/a/n;->N:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v5, Lcom/google/b/b/a/n;->d:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v5, Lcom/google/b/b/a/c;->a:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v5, Lcom/google/b/b/a/n;->U:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v5, Lcom/google/b/b/a/k;->a:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v5, Lcom/google/b/b/a/j;->a:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v5, Lcom/google/b/b/a/n;->S:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v5, Lcom/google/b/b/a/a;->a:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v5, Lcom/google/b/b/a/n;->b:Lcom/google/b/v;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v5, Lcom/google/b/b/a/b;

    iget-object v6, v0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    invoke-direct {v5, v6}, Lcom/google/b/b/a/b;-><init>(Lcom/google/b/b/c;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v5, Lcom/google/b/b/a/g;

    iget-object v6, v0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    invoke-direct {v5, v6, p5}, Lcom/google/b/b/a/g;-><init>(Lcom/google/b/b/c;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v4, Lcom/google/b/b/a/d;

    iget-object v5, v0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    invoke-direct {v4, v5}, Lcom/google/b/b/a/d;-><init>(Lcom/google/b/b/c;)V

    iput-object v4, v0, Lcom/google/b/f;->v:Lcom/google/b/b/a/d;

    .line 275
    iget-object v4, v0, Lcom/google/b/f;->v:Lcom/google/b/b/a/d;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v4, Lcom/google/b/b/a/n;->Z:Lcom/google/b/v;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v4, Lcom/google/b/b/a/i;

    iget-object v5, v0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    iget-object v6, v0, Lcom/google/b/f;->v:Lcom/google/b/b/a/d;

    invoke-direct {v4, v5, p2, p1, v6}, Lcom/google/b/b/a/i;-><init>(Lcom/google/b/b/c;Lcom/google/b/e;Lcom/google/b/b/d;Lcom/google/b/b/a/d;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/b/f;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/io/Reader;)Lcom/google/b/d/a;
    .locals 1

    .line 765
    new-instance v0, Lcom/google/b/d/a;

    invoke-direct {v0, p1}, Lcom/google/b/d/a;-><init>(Ljava/io/Reader;)V

    .line 766
    iget-boolean p1, p0, Lcom/google/b/f;->j:Z

    .line 9326
    iput-boolean p1, v0, Lcom/google/b/d/a;->a:Z

    return-object v0
.end method

.method private a(Ljava/io/Writer;)Lcom/google/b/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-boolean v0, p0, Lcom/google/b/f;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 751
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 753
    :cond_0
    new-instance v0, Lcom/google/b/d/c;

    invoke-direct {v0, p1}, Lcom/google/b/d/c;-><init>(Ljava/io/Writer;)V

    .line 754
    iget-boolean p1, p0, Lcom/google/b/f;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 755
    invoke-virtual {v0, p1}, Lcom/google/b/d/c;->c(Ljava/lang/String;)V

    .line 757
    :cond_1
    iget-boolean p1, p0, Lcom/google/b/f;->e:Z

    .line 9269
    iput-boolean p1, v0, Lcom/google/b/d/c;->e:Z

    return-object v0
.end method

.method private a(Lcom/google/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;,
            Lcom/google/b/s;
        }
    .end annotation

    .line 15333
    iget-boolean v0, p1, Lcom/google/b/d/a;->a:Z

    const/4 v1, 0x1

    .line 16326
    iput-boolean v1, p1, Lcom/google/b/d/a;->a:Z

    .line 923
    :try_start_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    const/4 v1, 0x0

    .line 925
    invoke-static {p2}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object p2

    .line 926
    invoke-virtual {p0, p2}, Lcom/google/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object p2

    .line 927
    invoke-virtual {p2, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17326
    iput-boolean v0, p1, Lcom/google/b/d/a;->a:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 944
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 942
    new-instance v1, Lcom/google/b/s;

    invoke-direct {v1, p2}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 939
    new-instance v1, Lcom/google/b/s;

    invoke-direct {v1, p2}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    .line 18326
    iput-boolean v0, p1, Lcom/google/b/d/a;->a:Z

    const/4 p1, 0x0

    return-object p1

    .line 937
    :cond_0
    :try_start_2
    new-instance v1, Lcom/google/b/s;

    invoke-direct {v1, p2}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19326
    :goto_0
    iput-boolean v0, p1, Lcom/google/b/d/a;->a:Z

    .line 946
    throw p2
.end method

.method private a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;,
            Lcom/google/b/s;
        }
    .end annotation

    .line 891
    invoke-direct {p0, p1}, Lcom/google/b/f;->a(Ljava/io/Reader;)Lcom/google/b/d/a;

    move-result-object p1

    .line 892
    invoke-direct {p0, p1, p2}, Lcom/google/b/f;->a(Lcom/google/b/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 893
    invoke-static {p2, p1}, Lcom/google/b/f;->a(Ljava/lang/Object;Lcom/google/b/d/a;)V

    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/s;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 840
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, v0, p2}, Lcom/google/b/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/b/k;)Ljava/lang/String;
    .locals 1

    .line 724
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 725
    invoke-direct {p0, p1, v0}, Lcom/google/b/f;->a(Lcom/google/b/k;Ljava/lang/Appendable;)V

    .line 726
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(D)V
    .locals 2

    .line 358
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/google/b/k;Lcom/google/b/d/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;
        }
    .end annotation

    .line 10242
    iget-boolean v0, p2, Lcom/google/b/d/c;->c:Z

    const/4 v1, 0x1

    .line 11235
    iput-boolean v1, p2, Lcom/google/b/d/c;->c:Z

    .line 11261
    iget-boolean v1, p2, Lcom/google/b/d/c;->d:Z

    .line 778
    iget-boolean v2, p0, Lcom/google/b/f;->h:Z

    .line 12253
    iput-boolean v2, p2, Lcom/google/b/d/c;->d:Z

    .line 12277
    iget-boolean v2, p2, Lcom/google/b/d/c;->e:Z

    .line 780
    iget-boolean v3, p0, Lcom/google/b/f;->e:Z

    .line 13269
    iput-boolean v3, p2, Lcom/google/b/d/c;->e:Z

    .line 782
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/b/b/l;->a(Lcom/google/b/k;Lcom/google/b/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14235
    iput-boolean v0, p2, Lcom/google/b/d/c;->c:Z

    .line 14253
    iput-boolean v1, p2, Lcom/google/b/d/c;->d:Z

    .line 14269
    iput-boolean v2, p2, Lcom/google/b/d/c;->e:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 786
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 784
    new-instance v3, Lcom/google/b/l;

    invoke-direct {v3, p1}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15235
    :goto_0
    iput-boolean v0, p2, Lcom/google/b/d/c;->c:Z

    .line 15253
    iput-boolean v1, p2, Lcom/google/b/d/c;->d:Z

    .line 15269
    iput-boolean v2, p2, Lcom/google/b/d/c;->e:Z

    .line 790
    throw p1
.end method

.method private a(Lcom/google/b/k;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;
        }
    .end annotation

    .line 739
    :try_start_0
    invoke-static {p2}, Lcom/google/b/b/l;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/b/f;->a(Ljava/io/Writer;)Lcom/google/b/d/c;

    move-result-object p2

    .line 740
    invoke-direct {p0, p1, p2}, Lcom/google/b/f;->a(Lcom/google/b/k;Lcom/google/b/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 742
    new-instance p2, Lcom/google/b/l;

    invoke-direct {p2, p1}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static a(Ljava/lang/Object;Lcom/google/b/d/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 899
    :try_start_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object p0

    sget-object p1, Lcom/google/b/d/b;->j:Lcom/google/b/d/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    new-instance p0, Lcom/google/b/l;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/b/l;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/b/d/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 905
    new-instance p1, Lcom/google/b/l;

    invoke-direct {p1, p0}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 903
    new-instance p1, Lcom/google/b/s;

    invoke-direct {p1, p0}, Lcom/google/b/s;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/b/d/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;
        }
    .end annotation

    .line 696
    invoke-static {p2}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object p2

    .line 3242
    iget-boolean v0, p3, Lcom/google/b/d/c;->c:Z

    const/4 v1, 0x1

    .line 4235
    iput-boolean v1, p3, Lcom/google/b/d/c;->c:Z

    .line 4261
    iget-boolean v1, p3, Lcom/google/b/d/c;->d:Z

    .line 700
    iget-boolean v2, p0, Lcom/google/b/f;->h:Z

    .line 5253
    iput-boolean v2, p3, Lcom/google/b/d/c;->d:Z

    .line 5277
    iget-boolean v2, p3, Lcom/google/b/d/c;->e:Z

    .line 702
    iget-boolean v3, p0, Lcom/google/b/f;->e:Z

    .line 6269
    iput-boolean v3, p3, Lcom/google/b/d/c;->e:Z

    .line 704
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7235
    iput-boolean v0, p3, Lcom/google/b/d/c;->c:Z

    .line 7253
    iput-boolean v1, p3, Lcom/google/b/d/c;->d:Z

    .line 7269
    iput-boolean v2, p3, Lcom/google/b/d/c;->e:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 708
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 706
    new-instance p2, Lcom/google/b/l;

    invoke-direct {p2, p1}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8235
    :goto_0
    iput-boolean v0, p3, Lcom/google/b/d/c;->c:Z

    .line 8253
    iput-boolean v1, p3, Lcom/google/b/d/c;->d:Z

    .line 8269
    iput-boolean v2, p3, Lcom/google/b/d/c;->e:Z

    .line 712
    throw p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/l;
        }
    .end annotation

    .line 682
    :try_start_0
    invoke-static {p3}, Lcom/google/b/b/l;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/b/f;->a(Ljava/io/Writer;)Lcom/google/b/d/c;

    move-result-object p3

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lcom/google/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/b/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 685
    new-instance p2, Lcom/google/b/l;

    invoke-direct {p2, p1}, Lcom/google/b/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Lcom/google/b/c/a;)Lcom/google/b/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/c/a<",
            "TT;>;)",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/google/b/f;->t:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lcom/google/b/f;->r:Lcom/google/b/c/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/u;

    if-eqz v0, :cond_1

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/google/b/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    iget-object v1, p0, Lcom/google/b/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 448
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/b/f$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 454
    :cond_3
    :try_start_0
    new-instance v2, Lcom/google/b/f$a;

    invoke-direct {v2}, Lcom/google/b/f$a;-><init>()V

    .line 455
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v3, p0, Lcom/google/b/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/b/v;

    .line 458
    invoke-interface {v4, p0, p1}, Lcom/google/b/v;->a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3001
    iget-object v3, v2, Lcom/google/b/f$a;->a:Lcom/google/b/u;

    if-nez v3, :cond_6

    .line 3004
    iput-object v4, v2, Lcom/google/b/f$a;->a:Lcom/google/b/u;

    .line 461
    iget-object v2, p0, Lcom/google/b/f;->t:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 470
    iget-object p1, p0, Lcom/google/b/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 3002
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 465
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (2.8.5) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 470
    iget-object p1, p0, Lcom/google/b/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_8
    throw v2
.end method

.method public final a(Lcom/google/b/v;Lcom/google/b/c/a;)Lcom/google/b/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/v;",
            "Lcom/google/b/c/a<",
            "TT;>;)",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/google/b/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object p1, p0, Lcom/google/b/f;->v:Lcom/google/b/b/a/d;

    :cond_0
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Lcom/google/b/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/b/v;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/b/v;->a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 546
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GSON cannot serialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/b/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Lcom/google/b/c/a;->a(Ljava/lang/Class;)Lcom/google/b/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/s;
        }
    .end annotation

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 814
    invoke-static {p2}, Lcom/google/b/b/k;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 616
    sget-object p1, Lcom/google/b/m;->a:Lcom/google/b/m;

    invoke-direct {p0, p1}, Lcom/google/b/f;->a(Lcom/google/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 618
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 637
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 638
    invoke-direct {p0, p1, p2, v0}, Lcom/google/b/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 639
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/b/f;->e:Z

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/b/f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/b/f;->u:Lcom/google/b/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
