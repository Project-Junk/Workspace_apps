.class Lcom/oppo/camera/gl/q$i;
.super Ljava/lang/Thread;
.source "OppoGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/oppo/camera/gl/q$h;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oppo/camera/gl/q;",
            ">;)V"
        }
    .end annotation

    .line 1200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 1170
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->a:Z

    .line 1171
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    .line 1172
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    .line 1173
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    .line 1174
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    .line 1175
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->f:Z

    .line 1176
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    .line 1177
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    .line 1178
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    .line 1179
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    .line 1180
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->k:Z

    .line 1181
    iput v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    .line 1182
    iput v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    .line 1183
    iput v0, p0, Lcom/oppo/camera/gl/q$i;->n:I

    .line 1184
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    .line 1185
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    .line 1186
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    .line 1187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1188
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->s:Z

    const/4 v2, 0x0

    .line 1189
    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    .line 1191
    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    .line 1197
    iput-object v2, p0, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    .line 1201
    iput v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    .line 1202
    iput v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    .line 1203
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    .line 1204
    iput v1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    .line 1205
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    .line 1206
    iput-object p1, p0, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q$i;)Lcom/oppo/camera/gl/q$h;
    .locals 0

    .line 1167
    iget-object p0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/gl/q$i;Z)Z
    .locals 0

    .line 1167
    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 1

    .line 1230
    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1231
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    .line 1232
    iget-object v0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->f()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    const-string v0, "GLSurfaceView"

    const-string v1, "stopEglContextLocked"

    .line 1237
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->g()V

    const/4 v0, 0x0

    .line 1241
    iput-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    .line 1242
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/q$j;->b(Lcom/oppo/camera/gl/q$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1247
    new-instance v0, Lcom/oppo/camera/gl/q$h;

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/oppo/camera/gl/q$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    const/4 v0, 0x0

    .line 1248
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    .line 1249
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    .line 1250
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v7, v5

    move v9, v7

    move v10, v9

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 1268
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1270
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->a:Z

    if-eqz v2, :cond_0

    .line 1271
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1612
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    .line 1613
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    .line 1614
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    .line 1615
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1274
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1275
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v12, v2

    move-object v0, v6

    const/4 v6, 0x0

    goto/16 :goto_7

    .line 1282
    :cond_1
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->d:Z

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    if-eq v2, v0, :cond_2

    .line 1283
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    .line 1284
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->c:Z

    iput-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->d:Z

    .line 1285
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1293
    :goto_2
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->k:Z

    if-eqz v2, :cond_3

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    .line 1299
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    const/4 v2, 0x0

    .line 1300
    iput-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1306
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1312
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v2, :cond_5

    .line 1317
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    :cond_5
    if-eqz v0, :cond_7

    .line 1321
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_7

    .line 1322
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 1323
    :cond_6
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->g(Lcom/oppo/camera/gl/q;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    .line 1326
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    .line 1335
    :cond_7
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->e:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    if-nez v0, :cond_9

    .line 1340
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_8

    .line 1341
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    :cond_8
    const/4 v0, 0x1

    .line 1344
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    const/4 v0, 0x0

    .line 1345
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    .line 1346
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1350
    :cond_9
    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->e:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1355
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->g:Z

    .line 1356
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    .line 1364
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    const/4 v0, 0x1

    .line 1366
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->q:Z

    .line 1367
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    .line 1370
    :cond_b
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 1371
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 1372
    iput-object v2, v1, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    move-object v0, v6

    .line 1376
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->l()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1378
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-nez v6, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    .line 1383
    :cond_d
    :try_start_4
    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v6}, Lcom/oppo/camera/gl/q$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v6, 0x1

    .line 1389
    :try_start_5
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    .line 1391
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    const/4 v13, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1385
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/gl/q$j;->b(Lcom/oppo/camera/gl/q$i;)V

    .line 1386
    throw v0

    .line 1395
    :cond_e
    :goto_5
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v6, :cond_f

    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-nez v6, :cond_f

    const/4 v6, 0x1

    .line 1396
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v14, 0x1

    .line 1402
    :cond_f
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v6, :cond_24

    .line 1403
    iget-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->s:Z

    if-eqz v6, :cond_10

    .line 1405
    iget v10, v1, Lcom/oppo/camera/gl/q$i;->l:I

    .line 1406
    iget v11, v1, Lcom/oppo/camera/gl/q$i;->m:I

    const/4 v6, 0x1

    .line 1407
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    const/4 v6, 0x0

    .line 1416
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->s:Z

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x1

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    .line 1419
    :goto_6
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->o:Z

    .line 1420
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    iget-boolean v2, v1, Lcom/oppo/camera/gl/q$i;->p:Z

    if-eqz v2, :cond_11

    const/4 v15, 0x1

    .line 1451
    :cond_11
    :goto_7
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v12, :cond_12

    .line 1454
    :try_start_6
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    const/4 v12, 0x0

    move/from16 v19, v6

    move-object v6, v0

    move/from16 v0, v19

    goto/16 :goto_0

    :cond_12
    if-eqz v14, :cond_14

    .line 1464
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/q$h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1465
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/4 v14, 0x1

    .line 1466
    :try_start_7
    iput-boolean v14, v1, Lcom/oppo/camera/gl/q$i;->j:Z

    .line 1467
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1468
    monitor-exit v2

    move v14, v6

    goto :goto_9

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1470
    :cond_13
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v6, 0x1

    .line 1471
    :try_start_9
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->j:Z

    .line 1472
    iput-boolean v6, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    .line 1473
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1474
    monitor-exit v2

    move-object v6, v0

    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_9
    if-eqz v7, :cond_15

    .line 1483
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v2}, Lcom/oppo/camera/gl/q$h;->a(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v2

    const/4 v7, 0x0

    :cond_15
    if-eqz v13, :cond_17

    .line 1492
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_16

    :try_start_b
    const-string v6, "onSurfaceCreated"

    .line 1496
    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1498
    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v6}, Lcom/oppo/camera/gl/q$h;->b(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    invoke-interface {v2, v8, v6}, Lcom/oppo/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v2, "onSurfaceCreated"

    .line 1500
    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    const-string v2, "onSurfaceCreated"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_a
    const/4 v13, 0x0

    :cond_17
    if-eqz v9, :cond_19

    .line 1512
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v2, :cond_18

    :try_start_d
    const-string v6, "onSurfaceChanged"

    .line 1516
    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1518
    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    invoke-interface {v2, v8, v10, v11}, Lcom/oppo/camera/gl/q$m;->a(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string v2, "onSurfaceChanged"

    .line 1520
    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_b

    :catchall_4
    move-exception v0

    const-string v2, "onSurfaceChanged"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_b
    const/4 v9, 0x0

    .line 1532
    :cond_19
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    iget-object v6, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v6}, Lcom/oppo/camera/gl/q$h;->c(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oppo/camera/gl/q$h;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1533
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v2, :cond_1b

    :try_start_f
    const-string v6, "onDrawFrame"

    .line 1537
    invoke-static {v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1539
    invoke-static {v2}, Lcom/oppo/camera/gl/q;->h(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/q$m;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/oppo/camera/gl/q$m;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v0, :cond_1a

    .line 1542
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    const/4 v0, 0x0

    :cond_1a
    :try_start_10
    const-string v2, "onDrawFrame"

    .line 1546
    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_c

    :catchall_5
    move-exception v0

    const-string v2, "onDrawFrame"

    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_c
    move-object v6, v0

    .line 1550
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->d()I

    move-result v0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "GLSurfaceView"

    move/from16 v18, v3

    const-string v3, "eglSwapBuffers"

    .line 1568
    invoke-static {v2, v3, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1570
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    const/4 v0, 0x1

    .line 1571
    :try_start_11
    iput-boolean v0, v1, Lcom/oppo/camera/gl/q$i;->f:Z

    .line 1572
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1573
    monitor-exit v2

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0

    :cond_1c
    const/4 v0, 0x1

    move v3, v0

    goto :goto_e

    :cond_1d
    move/from16 v18, v3

    const/4 v0, 0x1

    :goto_d
    move/from16 v3, v18

    .line 1579
    :goto_e
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->d(Lcom/oppo/camera/gl/q;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    .line 1580
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/q;

    invoke-static {v2}, Lcom/oppo/camera/gl/q;->i(Lcom/oppo/camera/gl/q;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1581
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v2}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 1582
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/q$h;->c()Z

    .line 1585
    :cond_1e
    iget-object v2, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oppo/camera/gl/q$h;->a(Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1586
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/q;

    .line 1588
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->j(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/r;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1589
    invoke-static {v0}, Lcom/oppo/camera/gl/q;->j(Lcom/oppo/camera/gl/q;)Lcom/oppo/camera/gl/r;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/oppo/camera/gl/r;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1f
    const-string v0, "GLSurfaceView"

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "guardedRun, OutputSurfaceDraw swap start tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-virtual {v0}, Lcom/oppo/camera/gl/q$h;->e()I

    const-string v0, "GLSurfaceView"

    .line 1596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guardedRun, OutputSurfaceDraw swap end tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    move/from16 v16, v3

    move/from16 v18, v4

    .line 1598
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->d(Lcom/oppo/camera/gl/q$h;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1599
    iget-object v0, v1, Lcom/oppo/camera/gl/q$i;->u:Lcom/oppo/camera/gl/q$h;

    invoke-static {v0}, Lcom/oppo/camera/gl/q$h;->e(Lcom/oppo/camera/gl/q$h;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :cond_21
    :goto_f
    if-eqz v15, :cond_22

    const/4 v4, 0x1

    const/4 v15, 0x0

    goto :goto_10

    :cond_22
    move/from16 v4, v18

    :goto_10
    move/from16 v3, v16

    goto/16 :goto_8

    :cond_23
    if-eqz v0, :cond_24

    :try_start_13
    const-string v2, "GLSurfaceView"

    const-string v6, "guardedRun, Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1430
    invoke-static {v2, v6}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    goto :goto_11

    :cond_24
    move-object v6, v0

    .line 1449
    :goto_11
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_7
    move-exception v0

    .line 1451
    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    .line 1612
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v2

    monitor-enter v2

    .line 1613
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->i()V

    .line 1614
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/gl/q$i;->j()V

    .line 1615
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0
.end method

.method private l()Z
    .locals 2

    .line 1624
    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/gl/q$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1637
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1638
    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    .line 1639
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1640
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1634
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    .line 1762
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1763
    :try_start_0
    iput p1, p0, Lcom/oppo/camera/gl/q$i;->l:I

    .line 1764
    iput p2, p0, Lcom/oppo/camera/gl/q$i;->m:I

    const/4 p1, 0x1

    .line 1765
    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->s:Z

    .line 1766
    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    const/4 p1, 0x0

    .line 1767
    iput-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    .line 1772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1773
    monitor-exit v0

    return-void

    .line 1776
    :cond_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1779
    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/gl/q$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1785
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1787
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1790
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1657
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1661
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1662
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1665
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->p:Z

    .line 1666
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    const/4 v1, 0x0

    .line 1667
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    .line 1668
    iput-object p1, p0, Lcom/oppo/camera/gl/q$i;->t:Ljava/lang/Runnable;

    .line 1670
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1620
    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/gl/q$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/gl/q$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1644
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1645
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/gl/q$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1823
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    .line 1824
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/gl/q$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1826
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1820
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 1650
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1651
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    .line 1652
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1653
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 1675
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1680
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    const/4 v1, 0x0

    .line 1681
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    .line 1682
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1684
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1686
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1688
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1691
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 1695
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1700
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->e:Z

    .line 1701
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1703
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1705
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1707
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1710
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    .line 1714
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1719
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    .line 1720
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1722
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1728
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1730
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1733
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 3

    .line 1737
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1742
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->c:Z

    const/4 v2, 0x1

    .line 1743
    iput-boolean v2, p0, Lcom/oppo/camera/gl/q$i;->o:Z

    .line 1744
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z

    .line 1745
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1747
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1753
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1755
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1758
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 1795
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1796
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->a:Z

    .line 1797
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/camera/gl/q$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1801
    :try_start_1
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1803
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1806
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OppoGLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/gl/q$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/gl/q$i;->setName(Ljava/lang/String;)V

    .line 1218
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/gl/q$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    :catch_0
    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/camera/gl/q$j;->a(Lcom/oppo/camera/gl/q$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/oppo/camera/gl/q;->j()Lcom/oppo/camera/gl/q$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oppo/camera/gl/q$j;->a(Lcom/oppo/camera/gl/q$i;)V

    throw v0

    :goto_0
    return-void
.end method
