.class public Lcom/oppo/camera/e;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/q$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/e$i;,
        Lcom/oppo/camera/e$m;,
        Lcom/oppo/camera/e$l;,
        Lcom/oppo/camera/e$n;,
        Lcom/oppo/camera/e$z;,
        Lcom/oppo/camera/e$y;,
        Lcom/oppo/camera/e$c;,
        Lcom/oppo/camera/e$j;,
        Lcom/oppo/camera/e$s;,
        Lcom/oppo/camera/e$w;,
        Lcom/oppo/camera/e$v;,
        Lcom/oppo/camera/e$g;,
        Lcom/oppo/camera/e$b;,
        Lcom/oppo/camera/e$t;,
        Lcom/oppo/camera/e$h;,
        Lcom/oppo/camera/e$q;,
        Lcom/oppo/camera/e$a;,
        Lcom/oppo/camera/e$u;,
        Lcom/oppo/camera/e$k;,
        Lcom/oppo/camera/e$x;,
        Lcom/oppo/camera/e$d;,
        Lcom/oppo/camera/e$r;,
        Lcom/oppo/camera/e$e;,
        Lcom/oppo/camera/e$f;,
        Lcom/oppo/camera/e$o;,
        Lcom/oppo/camera/e$p;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:J

.field private G:J

.field private H:J

.field private I:J

.field private J:J

.field private K:F

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:J

.field protected a:I

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Ljava/lang/String;

.field private aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

.field private aP:Ljava/lang/String;

.field private aQ:Ljava/lang/Object;

.field private aR:Ljava/lang/Object;

.field private aS:Landroid/os/ConditionVariable;

.field private aT:Landroid/app/Activity;

.field private aU:Lcom/oppo/camera/i;

.field private aV:Landroid/content/SharedPreferences;

.field private aW:Landroid/content/SharedPreferences;

.field private aX:Lcom/oppo/camera/e/f;

.field private aY:Lcom/oppo/camera/e/h;

.field private aZ:Lcom/oppo/camera/e/f$e;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private volatile ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Z

.field private az:Z

.field protected b:I

.field private bA:Lcom/oppo/camera/Ipa/e;

.field private bB:Landroid/view/VelocityTracker;

.field private bC:Landroid/view/GestureDetector;

.field private bD:Lcom/oppo/camera/u;

.field private bE:Lcom/oppo/camera/m;

.field private bF:Landroid/hardware/fingerprint/FingerprintManager;

.field private bG:Ljava/lang/Thread;

.field private bH:Lcom/oppo/camera/e$c;

.field private bI:Landroid/hardware/cabc/CabcManager;

.field private bJ:Lcom/oppo/camera/w;

.field private bK:Landroid/os/Handler;

.field private bL:Landroid/os/HandlerThread;

.field private bM:Landroid/net/Uri;

.field private bN:F

.field private bO:Lcom/oppo/camera/sticker/data/StickerItem;

.field private bP:Landroid/content/pm/ShortcutManager;

.field private bQ:Lcom/oppo/camera/entry/b;

.field private bR:[B

.field private bS:Lcom/oppo/camera/e$p;

.field private bT:Lcom/oppo/camera/k;

.field private bU:Lcom/oppo/camera/n;

.field private bV:Lcom/oppo/camera/s;

.field private bW:Landroid/util/Size;

.field private bX:Lcom/oppo/camera/e/f$b;

.field private bY:I

.field private bZ:Lcom/google/lens/sdk/LensApi;

.field private ba:Lcom/oppo/camera/e/f$f;

.field private bb:Landroid/media/ImageReader;

.field private bc:Landroid/media/ImageReader;

.field private bd:Landroid/media/ImageReader;

.field private be:Landroid/media/ImageReader;

.field private bf:Landroid/media/ImageReader;

.field private bg:Landroid/media/ImageReader;

.field private bh:Landroid/media/ImageReader;

.field private bi:Landroid/media/ImageReader;

.field private bj:Landroid/media/ImageReader;

.field private bk:Lcom/oppo/camera/f;

.field private bl:[Landroid/hardware/camera2/params/Face;

.field private bm:I

.field private bn:Landroid/graphics/Rect;

.field private bo:Landroid/graphics/Rect;

.field private bp:Lcom/oppo/camera/o;

.field private bq:Lcom/oppo/camera/ui/e;

.field private br:Lcom/oppo/camera/ui/preview/a/i;

.field private bs:Lcom/oppo/camera/ui/preview/h;

.field private bt:Lcom/oppo/camera/x;

.field private bu:Lcom/oppo/camera/e$y;

.field private bv:Lcom/oppo/camera/d/i;

.field private bw:Landroid/os/AsyncTask;

.field private bx:Lcom/oppo/camera/t;

.field private by:Landroid/hardware/foss/FossManager;

.field private bz:Lcom/oppo/camera/ui/control/h;

.field private final cA:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cB:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cC:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cD:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cE:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cF:Lcom/oppo/camera/k$c;

.field private cG:Lcom/oppo/camera/e$f;

.field private cH:I

.field private cI:Lcom/oppo/camera/e$b;

.field private cJ:Lcom/oppo/camera/e$h;

.field private cK:Lcom/oppo/camera/e$t;

.field private cL:Lcom/oppo/camera/q;

.field private cM:Lcom/oppo/camera/n/a;

.field private cN:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cO:Landroid/media/ImageReader$OnImageAvailableListener;

.field private cP:Lcom/oppo/camera/t$c;

.field private cQ:Lcom/oppo/camera/ui/preview/a/i$a;

.field private cR:Lcom/oppo/camera/e/f$c;

.field private cS:Lcom/oppo/camera/d/b;

.field private cT:Lcom/oppo/camera/ui/preview/c;

.field private cU:Lcom/oppo/camera/ui/d;

.field private cV:Lcom/oppo/camera/ui/menu/e;

.field private cW:Lcom/oppo/camera/Ipa/e$b;

.field private cX:Lcom/oppo/camera/ui/control/f;

.field private cY:Lcom/oppo/camera/ui/control/a;

.field private ca:Z

.field private cb:Z

.field private cc:Lcom/oppo/camera/e$l;

.field private cd:Lcom/oppo/camera/e$n;

.field private ce:B

.field private cf:Z

.field private cg:Z

.field private ch:Z

.field private ci:Z

.field private cj:Lcom/oppo/camera/Ipa/ImageProcessService;

.field private ck:Lcom/oppo/camera/jni/NativeBufferProducer;

.field private cl:Lcom/oppo/camera/Ipa/b$c;

.field private cm:Ljava/util/List;

.field private cn:Landroid/os/Handler;

.field private co:J

.field private cp:J

.field private cq:Ljava/lang/String;

.field private cr:Lcom/oppo/camera/e$i;

.field private cs:Z

.field private ct:J

.field private cu:Ljava/lang/Object;

.field private cv:Ljava/lang/reflect/Method;

.field private cw:Ljava/lang/reflect/Method;

.field private final cx:Lcom/oppo/camera/Ipa/c;

.field private final cy:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final cz:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:[I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/f;)V
    .locals 7

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 197
    iput v0, p0, Lcom/oppo/camera/e;->a:I

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/oppo/camera/e;->b:I

    .line 326
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->g:Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->h:Ljava/lang/Object;

    .line 328
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->i:Ljava/lang/Object;

    .line 329
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->j:Ljava/util/concurrent/ExecutorService;

    const/16 v1, 0xff

    .line 331
    iput v1, p0, Lcom/oppo/camera/e;->k:I

    .line 332
    iput v0, p0, Lcom/oppo/camera/e;->l:I

    .line 333
    iput v0, p0, Lcom/oppo/camera/e;->m:I

    .line 334
    iput v0, p0, Lcom/oppo/camera/e;->n:I

    .line 335
    iput v0, p0, Lcom/oppo/camera/e;->o:I

    .line 336
    iput v0, p0, Lcom/oppo/camera/e;->p:I

    const/4 v1, -0x1

    .line 337
    iput v1, p0, Lcom/oppo/camera/e;->q:I

    .line 338
    iput v1, p0, Lcom/oppo/camera/e;->r:I

    .line 339
    iput v0, p0, Lcom/oppo/camera/e;->s:I

    .line 342
    iput v0, p0, Lcom/oppo/camera/e;->v:I

    .line 343
    iput v0, p0, Lcom/oppo/camera/e;->w:I

    .line 344
    iput v1, p0, Lcom/oppo/camera/e;->x:I

    .line 345
    iput v0, p0, Lcom/oppo/camera/e;->y:I

    .line 346
    iput v1, p0, Lcom/oppo/camera/e;->z:I

    const-wide/16 v1, 0x0

    .line 348
    iput-wide v1, p0, Lcom/oppo/camera/e;->A:J

    .line 349
    iput-wide v1, p0, Lcom/oppo/camera/e;->B:J

    .line 354
    iput-wide v1, p0, Lcom/oppo/camera/e;->G:J

    .line 355
    iput-wide v1, p0, Lcom/oppo/camera/e;->H:J

    .line 356
    iput-wide v1, p0, Lcom/oppo/camera/e;->I:J

    .line 357
    iput-wide v1, p0, Lcom/oppo/camera/e;->J:J

    .line 361
    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    .line 362
    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    .line 363
    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    .line 364
    iput-boolean v0, p0, Lcom/oppo/camera/e;->O:Z

    .line 366
    iput-boolean v0, p0, Lcom/oppo/camera/e;->Q:Z

    .line 367
    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    .line 368
    iput-boolean v0, p0, Lcom/oppo/camera/e;->S:Z

    .line 369
    iput-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    .line 370
    iput-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    .line 371
    iput-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    .line 372
    iput-boolean v0, p0, Lcom/oppo/camera/e;->W:Z

    .line 373
    iput-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    .line 374
    iput v0, p0, Lcom/oppo/camera/e;->Y:I

    const-wide/16 v1, -0x1

    .line 375
    iput-wide v1, p0, Lcom/oppo/camera/e;->Z:J

    const-string v3, ""

    .line 376
    iput-object v3, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    .line 377
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ab:Z

    .line 378
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ac:Z

    .line 382
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ag:Z

    .line 383
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ah:Z

    .line 384
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ai:Z

    .line 385
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    const/4 v4, 0x1

    .line 386
    iput-boolean v4, p0, Lcom/oppo/camera/e;->ak:Z

    .line 387
    iput-boolean v0, p0, Lcom/oppo/camera/e;->al:Z

    .line 388
    iput-boolean v0, p0, Lcom/oppo/camera/e;->am:Z

    .line 389
    iput-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    .line 390
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ao:Z

    .line 391
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    .line 392
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    .line 393
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ar:Z

    .line 394
    iput-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    .line 395
    iput-boolean v0, p0, Lcom/oppo/camera/e;->at:Z

    .line 398
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aw:Z

    .line 399
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ax:Z

    .line 400
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ay:Z

    .line 401
    iput-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    .line 402
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aA:Z

    .line 403
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aB:Z

    .line 404
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    .line 405
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aD:Z

    .line 406
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aE:Z

    .line 407
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aF:Z

    .line 408
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aG:Z

    const/4 v5, 0x0

    .line 410
    iput-object v5, p0, Lcom/oppo/camera/e;->aH:Ljava/lang/String;

    .line 411
    iput-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const-string v6, "off"

    .line 412
    iput-object v6, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    const-string v6, "on"

    .line 413
    iput-object v6, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    .line 414
    iput-object v6, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    const-string v6, "normal"

    .line 415
    iput-object v6, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    .line 416
    iput-object v3, p0, Lcom/oppo/camera/e;->aN:Ljava/lang/String;

    .line 418
    iput-object v5, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 419
    iput-object v5, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    .line 421
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    .line 422
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aR:Ljava/lang/Object;

    .line 423
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    .line 425
    iput-object v5, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    .line 426
    iput-object v5, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    .line 427
    iput-object v5, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    .line 428
    iput-object v5, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    .line 429
    iput-object v5, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    .line 430
    iput-object v5, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    .line 431
    iput-object v5, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    .line 432
    iput-object v5, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    .line 433
    iput-object v5, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    .line 434
    iput-object v5, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    .line 435
    iput-object v5, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    .line 436
    iput-object v5, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    .line 437
    iput-object v5, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    .line 438
    iput-object v5, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    .line 439
    iput-object v5, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    .line 440
    iput-object v5, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    .line 442
    iput-object v5, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    .line 443
    iput v0, p0, Lcom/oppo/camera/e;->bm:I

    .line 444
    iput-object v5, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    .line 445
    iput-object v5, p0, Lcom/oppo/camera/e;->bo:Landroid/graphics/Rect;

    .line 446
    iput-object v5, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    .line 447
    iput-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 448
    iput-object v5, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    .line 449
    iput-object v5, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    .line 450
    iput-object v5, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    .line 451
    iput-object v5, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    .line 453
    iput-object v5, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    .line 454
    iput-object v5, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    .line 456
    iput-object v5, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    .line 457
    iput-object v5, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    .line 459
    iput-object v5, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    .line 460
    iput-object v5, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    .line 462
    iput-object v5, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    .line 463
    iput-object v5, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    .line 464
    iput-object v5, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    .line 466
    iput-object v5, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    .line 467
    iput-object v5, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    .line 468
    iput-object v5, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    .line 469
    iput-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 470
    iput v3, p0, Lcom/oppo/camera/e;->bN:F

    .line 471
    iput-object v5, p0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    .line 472
    iput-object v5, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    .line 473
    iput-object v5, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 475
    iput-object v5, p0, Lcom/oppo/camera/e;->bR:[B

    .line 478
    iput-object v5, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    .line 479
    iput-object v5, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    .line 480
    iput-object v5, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    .line 481
    iput-object v5, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    .line 482
    iput-object v5, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    .line 483
    iput v0, p0, Lcom/oppo/camera/e;->bY:I

    .line 484
    iput-object v5, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    .line 485
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ca:Z

    .line 486
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cb:Z

    .line 487
    iput-object v5, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    .line 488
    iput-object v5, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    .line 489
    iput-byte v0, p0, Lcom/oppo/camera/e;->ce:B

    .line 490
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    .line 491
    iput-boolean v4, p0, Lcom/oppo/camera/e;->cg:Z

    .line 492
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    .line 493
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ci:Z

    .line 495
    iput-object v5, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    .line 496
    new-instance v3, Lcom/oppo/camera/jni/NativeBufferProducer;

    invoke-direct {v3}, Lcom/oppo/camera/jni/NativeBufferProducer;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    .line 497
    iput-object v5, p0, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    .line 498
    iput-object v5, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    .line 499
    iput-object v5, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    .line 500
    iput-wide v1, p0, Lcom/oppo/camera/e;->co:J

    .line 501
    iput-wide v1, p0, Lcom/oppo/camera/e;->cp:J

    .line 502
    iput-object v6, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    .line 503
    iput-object v5, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    .line 505
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cs:Z

    .line 507
    iput-wide v1, p0, Lcom/oppo/camera/e;->ct:J

    .line 508
    iput-object v5, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    .line 509
    iput-object v5, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    .line 510
    iput-object v5, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    .line 512
    new-instance v1, Lcom/oppo/camera/e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$1;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    .line 760
    new-instance v1, Lcom/oppo/camera/e$12;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$12;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cy:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 891
    new-instance v1, Lcom/oppo/camera/e$23;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$23;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cz:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 909
    new-instance v1, Lcom/oppo/camera/e$34;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$34;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cA:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 927
    new-instance v1, Lcom/oppo/camera/e$45;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$45;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cB:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 945
    new-instance v1, Lcom/oppo/camera/e$49;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$49;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cC:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 963
    new-instance v1, Lcom/oppo/camera/e$50;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$50;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cD:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 980
    new-instance v1, Lcom/oppo/camera/e$51;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$51;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cE:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 1060
    new-instance v1, Lcom/oppo/camera/e$52;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$52;-><init>(Lcom/oppo/camera/e;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cF:Lcom/oppo/camera/k$c;

    .line 1096
    iput-object v5, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    .line 1097
    iput v0, p0, Lcom/oppo/camera/e;->cH:I

    .line 1098
    new-instance v0, Lcom/oppo/camera/e$b;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$b;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cI:Lcom/oppo/camera/e$b;

    .line 1127
    new-instance v0, Lcom/oppo/camera/e$h;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$h;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    .line 1128
    new-instance v0, Lcom/oppo/camera/e$t;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$t;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cK:Lcom/oppo/camera/e$t;

    .line 1129
    iput-object v5, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    .line 1131
    new-instance v0, Lcom/oppo/camera/e$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$2;-><init>(Lcom/oppo/camera/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    .line 1258
    new-instance v0, Lcom/oppo/camera/e$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$3;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cN:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 1276
    new-instance v0, Lcom/oppo/camera/e$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$4;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cO:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 1376
    new-instance v0, Lcom/oppo/camera/e$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$5;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cP:Lcom/oppo/camera/t$c;

    .line 5104
    new-instance v0, Lcom/oppo/camera/e$24;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$24;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cQ:Lcom/oppo/camera/ui/preview/a/i$a;

    .line 6857
    new-instance v0, Lcom/oppo/camera/e$32;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$32;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cR:Lcom/oppo/camera/e/f$c;

    .line 8865
    new-instance v0, Lcom/oppo/camera/e$35;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$35;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    .line 9768
    new-instance v0, Lcom/oppo/camera/e$37;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$37;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cT:Lcom/oppo/camera/ui/preview/c;

    .line 9948
    new-instance v0, Lcom/oppo/camera/e$38;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$38;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    .line 10592
    new-instance v0, Lcom/oppo/camera/e$39;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$39;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    .line 10633
    new-instance v0, Lcom/oppo/camera/e$40;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$40;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cW:Lcom/oppo/camera/Ipa/e$b;

    .line 10685
    new-instance v0, Lcom/oppo/camera/e$41;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$41;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cX:Lcom/oppo/camera/ui/control/f;

    .line 11215
    new-instance v0, Lcom/oppo/camera/e$46;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$46;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    .line 1394
    iput-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 1395
    iput-object p2, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    .line 1396
    new-instance p2, Lcom/oppo/camera/d/i;

    invoke-direct {p2, p1}, Lcom/oppo/camera/d/i;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 1397
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    return-object p0
.end method

.method private A(Z)Z
    .locals 2

    .line 6440
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    .line 6441
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private B(Z)Z
    .locals 9

    .line 10907
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10911
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    const-string p1, "checkReadyToCapture, video alert showing, so return"

    .line 10912
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10917
    :cond_1
    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    if-eqz v0, :cond_2

    const-string p1, "checkReadyToCapture, burst capture is processing"

    .line 10918
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10923
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 10924
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->a(I)Z

    move-result v0

    goto :goto_0

    .line 10925
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(I)Z

    move-result v0

    .line 10927
    :goto_0
    iget-boolean v4, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_15

    iget-boolean v4, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v4, :cond_15

    if-nez v0, :cond_4

    goto/16 :goto_5

    .line 10934
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aB()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "checkReadyToCapture, isEffectMenuScrolling, so return"

    .line 10935
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10940
    :cond_5
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1, v4}, Lcom/oppo/camera/j/b;->a(ZLandroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p1, "checkReadyToCapture, memory or storage is not enough"

    .line 10941
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10943
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->F()V

    return v1

    .line 10947
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 10948
    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_HIGHT_PICTURE_SIZE:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_COMMON:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    :goto_1
    invoke-virtual {v0, v4}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string p1, "checkReadyToCapture, IpaProcess queue is full!"

    .line 10951
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10956
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->N()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "checkReadyToCapture, sStorageStatus is failed, so return"

    .line 10957
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10959
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz p1, :cond_9

    .line 10960
    new-instance v0, Lcom/oppo/camera/e$42;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$42;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    return v1

    .line 10973
    :cond_a
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 10974
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 10975
    new-instance v4, Lcom/oppo/camera/e$43;

    invoke-direct {v4, p0}, Lcom/oppo/camera/e$43;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10984
    :cond_b
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->e()I

    move-result v0

    .line 10986
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "professional"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    if-le v0, v4, :cond_c

    .line 10987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReadyToCapture, rawCount: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10989
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v4, 0x7f0f0190

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    return v1

    .line 10994
    :cond_c
    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-eqz v0, :cond_d

    goto/16 :goto_4

    .line 11004
    :cond_d
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "checkReadyToCapture, stopTakePicture sucess, so return"

    .line 11005
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11010
    :cond_e
    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    const-string v4, ", so return"

    const-string v5, "checkReadyToCapture, mCameraState: "

    if-nez v0, :cond_13

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_f

    goto :goto_3

    :cond_f
    if-eqz p1, :cond_10

    .line 11016
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->j()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "checkReadyToCapture, checkStateBeforeCapture true, so return"

    .line 11017
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11022
    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 11023
    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->Y()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    .line 11030
    :cond_11
    invoke-direct {p0}, Lcom/oppo/camera/e;->bs()Z

    return v3

    .line 11024
    :cond_12
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", getIsCapturingState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 11025
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11024
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 11011
    :cond_13
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10995
    :cond_14
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkReadyToCapture, mbSwitchingCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAnimationRunning: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10997
    invoke-virtual {p0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbCaptureModeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSizeChanging: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10995
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10928
    :cond_15
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkReadyToCapture, mbPaused: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbInitialized: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSoundLoaded: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic B(Lcom/oppo/camera/e;)[Landroid/hardware/camera2/params/Face;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    return-object p0
.end method

.method static synthetic C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    return-object p0
.end method

.method private C(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 11103
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ci:Z

    .line 11105
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v1, "CameraManager"

    if-nez v0, :cond_0

    const-string p1, "capture, mOneCamera null"

    .line 11106
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "normal"

    .line 11108
    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11109
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ci:Z

    return-void

    .line 11113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture, mbSendCapturePictureRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->ci:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11115
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$44;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e$44;-><init>(Lcom/oppo/camera/e;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    return-object p0
.end method

.method private D(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 13089
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1

    .line 13090
    new-instance p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;-><init>(Landroid/content/Context;)V

    .line 13091
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13092
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCaptureType:I

    .line 13093
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13094
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mCameraId:Ljava/lang/String;

    .line 13095
    iget v0, p0, Lcom/oppo/camera/e;->n:I

    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mOrientation:I

    .line 13096
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    .line 13098
    iput v0, p1, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->mScreenBrightness:I

    .line 13099
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/model/PreviewStaticInfoMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic E(Lcom/oppo/camera/e;)Landroid/hardware/cabc/CabcManager;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bI:Landroid/hardware/cabc/CabcManager;

    return-object p0
.end method

.method static synthetic F(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->br()Lcom/oppo/camera/u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcom/oppo/camera/e;)Lcom/oppo/camera/u;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object p0
.end method

.method static synthetic H(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->q:I

    return p0
.end method

.method static synthetic I(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bt()V

    return-void
.end method

.method static synthetic J(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->U:Z

    return p0
.end method

.method static synthetic K(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ao:Z

    return p0
.end method

.method static synthetic L(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->V:Z

    return p0
.end method

.method static synthetic M(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->O:Z

    return p0
.end method

.method static synthetic O(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aK()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Q(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ar:Z

    return p0
.end method

.method static synthetic R(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->av:Z

    return p0
.end method

.method static synthetic S(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->az:Z

    return p0
.end method

.method static synthetic T(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->T:Z

    return p0
.end method

.method static synthetic U(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->am:Z

    return p0
.end method

.method static synthetic V(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->n:I

    return p0
.end method

.method static synthetic W(Lcom/oppo/camera/e;)Landroid/view/VelocityTracker;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic X(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$f;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-object p0
.end method

.method static synthetic Y(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    return-void
.end method

.method static synthetic Z(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bf()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;B)B
    .locals 0

    .line 194
    iput-byte p1, p0, Lcom/oppo/camera/e;->ce:B

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->v:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->co:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;)Landroid/app/Activity;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/hardware/cabc/CabcManager;)Landroid/hardware/cabc/CabcManager;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bI:Landroid/hardware/cabc/CabcManager;

    return-object p1
.end method

.method private a(Lcom/oppo/camera/d/a;)Landroid/util/Size;
    .locals 3

    const-string v0, "CameraManager"

    if-nez p1, :cond_0

    .line 5746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 5751
    :cond_0
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->f(I)V

    .line 5752
    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/f;)V

    .line 5753
    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    .line 5755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePreviewSize, previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/Ipa/b$c;)Lcom/oppo/camera/Ipa/b$c;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e$c;)Lcom/oppo/camera/e$c;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e$f;)Lcom/oppo/camera/e$f;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/e/h;)Lcom/oppo/camera/e/h;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Lcom/oppo/camera/u;)Lcom/oppo/camera/u;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 3845
    invoke-static {p4, p5}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3848
    :cond_0
    iget-object p4, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    if-eqz p4, :cond_1

    .line 3849
    invoke-interface {p4, p3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3852
    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_2

    .line 3853
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private a(IZ)V
    .locals 6

    .line 5699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useIsoSetDisplay, messageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "useIsoSetDisplay"

    .line 5701
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 5703
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aq:Z

    if-eqz v1, :cond_3

    .line 5704
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 5705
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    const/16 v1, 0x5f

    const-wide/16 v4, 0x320

    if-eq p1, v1, :cond_2

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5717
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v3, v4, v5}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5719
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "oppo_in_camera_mode"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 5722
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5710
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v2, v4, v5}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    .line 5733
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(IZZ)V
    .locals 3

    .line 4311
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_1

    .line 4318
    invoke-virtual {v0}, Lcom/oppo/camera/t;->b()V

    .line 4321
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraTest Camera Switch Start, cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4323
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->g(Z)V

    .line 4324
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 4325
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 4326
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->L(Z)V

    .line 4328
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4329
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->p(Z)V

    .line 4332
    :cond_2
    iput v2, p0, Lcom/oppo/camera/e;->v:I

    .line 4333
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    .line 4337
    iget-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/preview/h;->u()V

    const/4 v1, 0x3

    .line 4340
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_0

    .line 4361
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->i(I)V

    .line 4362
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 4363
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    goto :goto_1

    .line 4343
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/oppo/camera/e$f;->f:Z

    if-eqz p1, :cond_5

    .line 4344
    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    goto :goto_1

    .line 4346
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    if-nez p1, :cond_6

    .line 4347
    invoke-virtual {p0}, Lcom/oppo/camera/e;->N()V

    .line 4350
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-boolean p1, p1, Lcom/oppo/camera/e$f;->f:Z

    if-eqz p1, :cond_7

    .line 4351
    invoke-direct {p0}, Lcom/oppo/camera/e;->aX()V

    goto :goto_1

    .line 4353
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput-boolean v0, p1, Lcom/oppo/camera/e$f;->g:Z

    .line 4354
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 4357
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, v0, p2, p3}, Lcom/oppo/camera/n/a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    .line 4312
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraIdChange, mbPaused: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbFrameAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/ImageReader;)V
    .locals 18

    move-object/from16 v6, p0

    const-string v0, "CameraManager"

    const-string v1, "addImageToIpa, start"

    .line 838
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v7

    .line 841
    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 842
    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 843
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    .line 845
    invoke-static {v7}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;)V

    .line 847
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    .line 848
    aget-object v8, v5, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x2

    .line 849
    aget-object v10, v5, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 850
    new-array v12, v9, [Ljava/nio/ByteBuffer;

    aput-object v8, v12, v4

    const/4 v11, 0x1

    aput-object v10, v12, v11

    .line 852
    new-array v13, v9, [I

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    aput v8, v13, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    aput v8, v13, v11

    .line 853
    new-array v14, v9, [I

    aput v1, v14, v4

    aput v2, v14, v11

    .line 854
    new-array v15, v9, [I

    aget-object v8, v5, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aput v8, v15, v4

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aput v5, v15, v11

    .line 855
    iget-object v11, v6, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/oppo/camera/jni/NativeBufferProducer;->getNativeBuffer([Ljava/nio/ByteBuffer;[I[I[IZZ)Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 859
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addImageToIpa, nativeBufferInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mThumbnailInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/oppo/camera/e;->cl:Lcom/oppo/camera/Ipa/b$c;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v8, "addImageToIpa, nativeBufferInfo is null!"

    .line 862
    invoke-static {v0, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_0
    new-instance v0, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    .line 866
    iput-object v5, v0, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    .line 867
    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->e:I

    .line 868
    iput v2, v0, Lcom/oppo/camera/Ipa/b$a;->f:I

    const/16 v1, 0x11

    .line 869
    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->i:I

    .line 870
    iput v3, v0, Lcom/oppo/camera/Ipa/b$a;->g:I

    .line 871
    iput v2, v0, Lcom/oppo/camera/Ipa/b$a;->h:I

    .line 872
    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    .line 873
    iget v1, v6, Lcom/oppo/camera/e;->m:I

    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->j:I

    const/4 v1, -0x1

    .line 874
    iput v1, v0, Lcom/oppo/camera/Ipa/b$a;->o:I

    .line 875
    iput-boolean v4, v0, Lcom/oppo/camera/Ipa/b$a;->l:Z

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->p:J

    .line 878
    iget-object v1, v6, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {v1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    :cond_1
    const-string v1, "pref_support_capture_preview"

    .line 882
    invoke-virtual {v6, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "func_post_thumbnail"

    .line 883
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v6, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    .line 884
    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 885
    iget-wide v1, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    iget-wide v3, v0, Lcom/oppo/camera/Ipa/b$a;->p:J

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/e;->a(JLjava/lang/String;ZZ)V

    .line 888
    :cond_2
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;IZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/media/ImageReader;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->a(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;ZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->e(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e;ZZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e;->a(ZZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 7688
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 7689
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .locals 2

    .line 13005
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 13006
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 13007
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13008
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 13009
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13010
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 13011
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 13012
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    .line 13013
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildMenuClick(Ljava/lang/String;ZZZ)V

    .line 13014
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method private a(ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 3651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraTest Camera Mode Change Start, isAsync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", checkToAsync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fromAnimation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mbPaused: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraManager"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    iget-boolean v4, v0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_10

    iget-object v4, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 3659
    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->f(Z)V

    :cond_1
    const/4 v6, 0x0

    if-nez v1, :cond_2

    .line 3663
    iget-object v7, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v7, v6, v6}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 3666
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aU()V

    .line 3667
    iget-object v7, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v8, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 3668
    invoke-virtual {v8}, Lcom/oppo/camera/entry/b;->r()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    move v8, v4

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-static {v8}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_mode_key"

    .line 3667
    invoke-virtual {v7, v9, v8}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3670
    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8, v6}, Lcom/oppo/camera/ui/e;->w(Z)V

    .line 3671
    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->aI()V

    .line 3672
    iget-object v8, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v8}, Lcom/oppo/camera/ui/e;->D()V

    .line 3673
    iput v6, v0, Lcom/oppo/camera/e;->v:I

    if-eqz v2, :cond_8

    .line 3675
    invoke-virtual {v0, v7}, Lcom/oppo/camera/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3676
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->J()V

    if-nez v3, :cond_6

    .line 3678
    iget-object v2, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v2, :cond_4

    .line 3680
    invoke-virtual {v2}, Lcom/oppo/camera/q;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    .line 3681
    invoke-virtual {v2}, Lcom/oppo/camera/e$h;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3682
    :cond_4
    iget-object v1, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oppo/camera/q;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3683
    iget-object v1, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v1, v6}, Lcom/oppo/camera/q;->b(Z)V

    .line 3686
    :cond_5
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->av()V

    .line 3687
    iget-object v1, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {v1}, Lcom/oppo/camera/e$h;->c()V

    .line 3688
    invoke-direct {v0, v7}, Lcom/oppo/camera/e;->e(Ljava/lang/String;)Z

    return-void

    .line 3692
    :cond_6
    invoke-direct {v0, v7}, Lcom/oppo/camera/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureModeChanged, mPreviewImageProcess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    iput-boolean v4, v0, Lcom/oppo/camera/e;->ag:Z

    goto :goto_1

    :cond_7
    const-string v1, "onCaptureModeChanged, modeType or surfaceType changed, delay to call"

    .line 3697
    invoke-static {v5, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3704
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v2

    .line 3705
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->b()I

    move-result v3

    .line 3706
    iget-object v8, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v8}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v8

    .line 3707
    iget-object v9, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v9}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v9

    iget v10, v0, Lcom/oppo/camera/e;->q:I

    .line 3708
    invoke-virtual {v9, v10}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v9

    .line 3710
    iget-object v10, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v10}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v10

    .line 3711
    iget-object v11, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v11, v7}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v11

    .line 3712
    iget v12, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v11, v12}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v12

    .line 3714
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCaptureModeChanged, beforeModeName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", beforeModeProperCameraId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", afterModeName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", afterModeProperCameraId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    iget v13, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v7, v13}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    move-result v13

    .line 3719
    iget-object v14, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v14}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v14

    const/4 v15, 0x0

    if-eq v9, v12, :cond_9

    .line 3721
    iget-boolean v4, v0, Lcom/oppo/camera/e;->T:Z

    if-nez v4, :cond_9

    .line 3722
    iget-object v4, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_9

    .line 3723
    new-instance v6, Lcom/oppo/camera/e$m;

    invoke-direct {v6, v0, v15}, Lcom/oppo/camera/e$m;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    .line 3724
    invoke-virtual {v6, v8}, Lcom/oppo/camera/e$m;->a(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3725
    invoke-virtual {v6, v7}, Lcom/oppo/camera/e$m;->b(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3726
    invoke-virtual {v6, v9}, Lcom/oppo/camera/e$m;->a(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3727
    invoke-virtual {v6, v12}, Lcom/oppo/camera/e$m;->b(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3728
    invoke-virtual {v6, v3}, Lcom/oppo/camera/e$m;->c(I)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3729
    invoke-virtual {v6, v2}, Lcom/oppo/camera/e$m;->a(Z)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3730
    invoke-virtual {v6, v14}, Lcom/oppo/camera/e$m;->b(Z)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3731
    invoke-virtual {v6, v11}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3732
    invoke-virtual {v6, v10}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v6

    .line 3723
    invoke-virtual {v4, v6}, Lcom/oppo/camera/e$l;->a(Lcom/oppo/camera/e$m;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    .line 3737
    :goto_2
    iget-boolean v6, v0, Lcom/oppo/camera/e;->ag:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    const/4 v15, 0x0

    .line 3738
    invoke-virtual {v10, v6, v15}, Lcom/oppo/camera/d/a;->a(IZ)V

    .line 3739
    iget-object v15, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v15, v6, v6}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 3740
    iget-object v15, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v15, v7, v6}, Lcom/oppo/camera/ui/e;->c(Ljava/lang/String;Z)V

    .line 3743
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCaptureModeChanged, modeChange: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", hasOpenCamera: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_c

    .line 3745
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->P()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_3

    .line 3768
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->af()V

    goto :goto_4

    .line 3746
    :cond_c
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCaptureModeChanged, isPreviewStopped: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->P()Z

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isAsync: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 3748
    invoke-virtual {v0, v6, v6}, Lcom/oppo/camera/e;->b(ZZ)V

    .line 3749
    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->r(Z)V

    .line 3751
    iget-object v6, v0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v6, :cond_d

    if-nez v4, :cond_d

    .line 3752
    new-instance v4, Lcom/oppo/camera/e$m;

    const/4 v13, 0x0

    invoke-direct {v4, v0, v13}, Lcom/oppo/camera/e$m;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    .line 3753
    invoke-virtual {v4, v8}, Lcom/oppo/camera/e$m;->a(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v4

    .line 3754
    invoke-virtual {v4, v7}, Lcom/oppo/camera/e$m;->b(Ljava/lang/String;)Lcom/oppo/camera/e$m;

    move-result-object v4

    .line 3755
    invoke-virtual {v4, v9}, Lcom/oppo/camera/e$m;->a(I)Lcom/oppo/camera/e$m;

    move-result-object v4

    .line 3756
    invoke-virtual {v4, v12}, Lcom/oppo/camera/e$m;->b(I)Lcom/oppo/camera/e$m;

    move-result-object v4

    .line 3757
    invoke-virtual {v4, v3}, Lcom/oppo/camera/e$m;->c(I)Lcom/oppo/camera/e$m;

    move-result-object v3

    .line 3758
    invoke-virtual {v3, v2}, Lcom/oppo/camera/e$m;->a(Z)Lcom/oppo/camera/e$m;

    move-result-object v2

    .line 3759
    invoke-virtual {v2, v14}, Lcom/oppo/camera/e$m;->b(Z)Lcom/oppo/camera/e$m;

    move-result-object v2

    .line 3760
    invoke-virtual {v2, v11}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v2

    .line 3761
    invoke-virtual {v2, v10}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;

    move-result-object v2

    .line 3752
    invoke-virtual {v6, v2}, Lcom/oppo/camera/e$l;->a(Lcom/oppo/camera/e$m;)V

    :cond_d
    if-nez v1, :cond_e

    .line 3765
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->af()V

    :cond_e
    :goto_4
    if-nez v1, :cond_f

    .line 3771
    iget-object v2, v0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {v2}, Lcom/oppo/camera/e$h;->d()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3772
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/oppo/camera/d/i;->a(IZ)V

    const/4 v2, 0x0

    .line 3773
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->f(Z)V

    .line 3774
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bm()V

    .line 3775
    iget-object v4, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, v3, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 3778
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraTest Camera Mode Change End, isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method

.method private a([B)V
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    .line 1372
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    iget v2, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/k;->a([BII)V

    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 1360
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/ui/preview/a/i;->a([BIII)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "applyFlashModeOff"

    .line 12927
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_camera_flashmode_key"

    const-string v1, "off"

    .line 12929
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12932
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12933
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12934
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "pref_camera_videoflashmode_key"

    .line 12937
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12939
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_1

    .line 12941
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    move-object v2, p1

    .line 12944
    :cond_1
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz v2, :cond_3

    .line 12948
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z
    .locals 3

    if-eqz p5, :cond_0

    .line 5793
    invoke-interface {p5}, Lcom/oppo/camera/ui/preview/d$a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5795
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBlurAnim, animType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5797
    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 5801
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/e;->S:Z

    if-eqz v1, :cond_2

    return v2

    .line 5805
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-nez v1, :cond_3

    .line 5806
    new-instance v1, Lcom/oppo/camera/q;

    invoke-direct {v1, p0}, Lcom/oppo/camera/q;-><init>(Lcom/oppo/camera/q$b;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    .line 5809
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/e;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5810
    iget-object v1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/oppo/camera/q;->a(Landroid/util/Size;Landroid/util/Size;ZI)Z

    .line 5813
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    invoke-virtual {p1, p5}, Lcom/oppo/camera/q;->a(Lcom/oppo/camera/ui/preview/d$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 5816
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->k(Z)V

    .line 5817
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->c(I)V

    return p1

    :cond_5
    return v2
.end method

.method static synthetic a(Lcom/oppo/camera/e;Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z
    .locals 0

    .line 194
    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->B(Z)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 13176
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 13177
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/e;[B)[B
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bR:[B

    return-object p1
.end method

.method static synthetic aA(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    return-object p0
.end method

.method private aA()V
    .locals 2

    .line 1507
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    .line 1508
    iget-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1509
    new-instance v0, Lcom/oppo/camera/e$7;

    iget-object v1, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$7;-><init>(Lcom/oppo/camera/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    return-void
.end method

.method static synthetic aB(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cC:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private aB()V
    .locals 2

    .line 1548
    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1549
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1550
    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic aC(Lcom/oppo/camera/e;)Landroid/os/Handler;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    return-object p0
.end method

.method private aC()V
    .locals 2

    .line 1555
    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1556
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1557
    iget-object v0, p0, Lcom/oppo/camera/e;->bK:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic aD(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$c;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cR:Lcom/oppo/camera/e/f$c;

    return-object p0
.end method

.method private aD()V
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/oppo/camera/e;->bL:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method private aE()V
    .locals 2

    .line 1576
    new-instance v0, Lcom/oppo/camera/o;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    .line 1577
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    invoke-virtual {v0}, Lcom/oppo/camera/o;->a()V

    const/16 v0, 0x60

    const/4 v1, 0x0

    .line 1579
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a(IZ)V

    .line 1581
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "output"

    .line 1586
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1588
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v1, "crop"

    .line 1592
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1599
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->e(Z)V

    return-void
.end method

.method static synthetic aE(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->N:Z

    return p0
.end method

.method static synthetic aF(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aG()V

    return-void
.end method

.method private aF()Z
    .locals 3

    .line 1849
    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_support_ipa_process"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    .line 1850
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->A(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    .line 1851
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "needNotifyIpa, will return true"

    .line 1853
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v0, "needNotifyIpa, will return false"

    .line 1858
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private aG()V
    .locals 3

    .line 1928
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    const-string v0, "func_torch_soft_light"

    .line 1930
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1932
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    .line 1935
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->aI()V

    .line 1936
    invoke-virtual {p0}, Lcom/oppo/camera/e;->o()V

    return-void
.end method

.method static synthetic aG(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->M:Z

    return p0
.end method

.method private aH()V
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    const-string v0, "func_torch_soft_light"

    .line 1956
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1958
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    .line 1961
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->aI()V

    .line 1962
    invoke-virtual {p0}, Lcom/oppo/camera/e;->p()V

    return-void
.end method

.method static synthetic aH(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aH()V

    return-void
.end method

.method static synthetic aI(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/d;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    return-object p0
.end method

.method private aI()V
    .locals 2

    .line 1966
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    const-string v0, "func_torch_soft_light"

    .line 1969
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aJ()Ljava/lang/String;
    .locals 3

    .line 2138
    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic aJ(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->by()Z

    move-result p0

    return p0
.end method

.method static synthetic aK(Lcom/oppo/camera/e;)B
    .locals 0

    .line 194
    iget-byte p0, p0, Lcom/oppo/camera/e;->ce:B

    return p0
.end method

.method private aK()Ljava/lang/String;
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "checkSmallInternalStorage"

    .line 2335
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v1, 0x7f0f0179

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2339
    invoke-static {}, Lcom/oppo/camera/v;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oppo/camera/v;->g()D

    move-result-wide v1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const-string v0, "on"

    .line 2343
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const-string v2, "pref_camera_storage_key"

    .line 2344
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2345
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method private aL()V
    .locals 2

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStorage, mbCheckStorage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    iget-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2353
    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    .line 2354
    new-instance v0, Lcom/oppo/camera/e$14;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$14;-><init>(Lcom/oppo/camera/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2428
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic aL(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bb()V

    return-void
.end method

.method private aM()I
    .locals 2

    .line 2493
    iget v0, p0, Lcom/oppo/camera/e;->k:I

    const-string v1, "oppo.multibits.dimming.support"

    .line 2495
    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "sys.oppo.multibrightness"

    const-string v1, "0"

    .line 2496
    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    iget v0, p0, Lcom/oppo/camera/e;->k:I

    :cond_0
    return v0
.end method

.method static synthetic aM(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic aN(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/h;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    return-object p0
.end method

.method private aN()V
    .locals 7

    const-string v0, "CameraManager"

    const-string v1, "onPictureSizeChanged"

    .line 2745
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    .line 2748
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v2

    .line 2749
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    .line 2750
    new-instance v6, Lcom/oppo/camera/e$q;

    invoke-direct {v6, p0}, Lcom/oppo/camera/e$q;-><init>(Lcom/oppo/camera/e;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2754
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    .line 2757
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aJ()V

    :cond_1
    const/4 v0, 0x0

    .line 2760
    iput v0, p0, Lcom/oppo/camera/e;->v:I

    return-void
.end method

.method static synthetic aO(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/a/i;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    return-object p0
.end method

.method private aO()V
    .locals 9

    .line 2764
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    const-string v2, "pref_video_size_key"

    .line 2765
    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2764
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2767
    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "video_size_4kuhd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2768
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/camera/e;->aE:Z

    .line 2769
    invoke-direct {p0}, Lcom/oppo/camera/e;->bJ()V

    .line 2770
    invoke-direct {p0}, Lcom/oppo/camera/e;->aP()V

    return-void

    .line 2775
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v4

    .line 2776
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2778
    new-instance v8, Lcom/oppo/camera/e$x;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/oppo/camera/e$x;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2781
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->i(Z)V

    .line 2783
    iget-object v1, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "video_size_720p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2784
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aA()V

    :cond_2
    return-void
.end method

.method private aP()V
    .locals 7

    .line 2790
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v3

    .line 2791
    new-instance v6, Lcom/oppo/camera/e$a;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/oppo/camera/e$a;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2794
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_0
    return-void
.end method

.method static synthetic aP(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ae:Z

    return p0
.end method

.method static synthetic aQ(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->o:I

    return p0
.end method

.method private aQ()Z
    .locals 3

    .line 2799
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 2800
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNoneSatUltraWideAngleMenuOpen, noneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic aR(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->w:I

    return p0
.end method

.method private aR()V
    .locals 7

    .line 2809
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v3

    .line 2810
    new-instance v6, Lcom/oppo/camera/e$k;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/oppo/camera/e$k;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2813
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_0
    return-void
.end method

.method static synthetic aS(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private aS()V
    .locals 7

    .line 2827
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v2

    .line 2830
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2831
    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2835
    new-instance v6, Lcom/oppo/camera/e$u;

    invoke-direct {v6, p0, v1}, Lcom/oppo/camera/e$u;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2838
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->i(Z)V

    :cond_1
    return-void
.end method

.method static synthetic aT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$f;
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bk()Lcom/oppo/camera/e/f$f;

    move-result-object p0

    return-object p0
.end method

.method private aT()Z
    .locals 1

    .line 3061
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/e;->am:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic aU(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->bY:I

    return p0
.end method

.method private aU()V
    .locals 1

    .line 3639
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 3640
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->m()V

    :cond_0
    return-void
.end method

.method static synthetic aV(Lcom/oppo/camera/e;)Ljava/util/List;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cm:Ljava/util/List;

    return-object p0
.end method

.method private aV()V
    .locals 2

    .line 3878
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_0

    .line 3879
    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/i;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    return-object p0
.end method

.method private aW()V
    .locals 3

    .line 3903
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f0f00e0

    .line 3904
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3905
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "CameraManager"

    const-string v1, "finishByHighTemperature, Toast.show."

    .line 3907
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "temps_cam"

    .line 3909
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    .line 3910
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    .line 3911
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    :cond_0
    return-void
.end method

.method private aX()V
    .locals 4

    .line 4282
    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/oppo/camera/e$f;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4288
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchPreviewData, getCurrentModeName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-object v0, v0, Lcom/oppo/camera/e$f;->h:Landroid/graphics/Bitmap;

    const/high16 v1, 0x41c80000    # 25.0f

    .line 4291
    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4293
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4294
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v2, v1, v3}, Lcom/oppo/camera/ui/preview/e;->a(Landroid/graphics/Bitmap;I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 4298
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4302
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    .line 4303
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 4304
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->g(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 4307
    iput-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    return-void

    :cond_4
    :goto_0
    const-string v0, "onSwitchPreviewData, invalid data"

    .line 4283
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aX(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->aE:Z

    return p0
.end method

.method private aY()Ljava/lang/String;
    .locals 3

    .line 4440
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "commonVideo"

    goto :goto_0

    .line 4442
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4443
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 4445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterSwitchMode, previousCapMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4449
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic aY(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result p0

    return p0
.end method

.method static synthetic aZ(Lcom/oppo/camera/e;)Landroid/util/Size;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    return-object p0
.end method

.method private aZ()Z
    .locals 1

    .line 4476
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    return v0
.end method

.method static synthetic aa(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aU()V

    return-void
.end method

.method static synthetic ab(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->az()Z

    move-result p0

    return p0
.end method

.method static synthetic ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    return-object p0
.end method

.method static synthetic ad(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bg()V

    return-void
.end method

.method static synthetic ae(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bz()Z

    move-result p0

    return p0
.end method

.method static synthetic af(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bh()V

    return-void
.end method

.method static synthetic ag(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    return-void
.end method

.method static synthetic ah(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bi()V

    return-void
.end method

.method static synthetic ai(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ay:Z

    return p0
.end method

.method static synthetic aj(Lcom/oppo/camera/e;)Lcom/oppo/camera/statistics/model/CaptureMsgData;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    return-object p0
.end method

.method static synthetic ak(Lcom/oppo/camera/e;)Landroid/graphics/Rect;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic al(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->cg:Z

    return p0
.end method

.method static synthetic am(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->aF:Z

    return p0
.end method

.method static synthetic an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    return-object p0
.end method

.method static synthetic ao(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ap(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cO:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic aq(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ar(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cy:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic as(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic at(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cD:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic au(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic av(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cz:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic aw(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic ax(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cA:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic ay(Lcom/oppo/camera/e;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic az(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cB:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private az()Z
    .locals 2

    .line 1452
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "keyguard"

    .line 1453
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->Y:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->Z:J

    return-wide p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    return-object p1
.end method

.method private b(II)V
    .locals 1

    .line 12990
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 12991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12992
    new-instance p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/oppo/camera/statistics/model/FocusAimMsgData;-><init>(Landroid/content/Context;)V

    .line 12993
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCameraId:Ljava/lang/String;

    .line 12994
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCaptureMode:Ljava/lang/String;

    .line 12995
    iget v0, p0, Lcom/oppo/camera/e;->n:I

    iput v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mOrientation:I

    .line 12996
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCaptureType:I

    .line 12997
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 12998
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    iput-boolean v0, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mbVideoRecording:Z

    .line 12999
    iput-object p1, p2, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->mTouchXY:Ljava/lang/String;

    .line 13000
    invoke-virtual {p2}, Lcom/oppo/camera/statistics/model/FocusAimMsgData;->report()V

    :cond_0
    return-void
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 6791
    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    if-eqz v0, :cond_2

    const-string v0, "key_support_show_no_face"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6792
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    .line 6793
    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 6795
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ap()V

    goto :goto_0

    .line 6797
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aq()V

    goto :goto_0

    .line 6801
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_3

    .line 6802
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aq()V

    .line 6806
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_c

    const-string v0, "pref_face_detection_key"

    .line 6807
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6808
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->R()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->x()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xd

    if-eqz v0, :cond_7

    .line 6811
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v3, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Rect;)V

    .line 6813
    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS_PREVIEW_SCALE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigFloatValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)F

    move-result v2

    .line 6815
    iget-boolean v3, p0, Lcom/oppo/camera/e;->af:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    .line 6819
    :goto_2
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6820
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->a(F)V

    .line 6823
    :cond_6
    iget-object v2, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/h;->D()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6824
    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 6825
    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/n/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 6829
    :cond_7
    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 6830
    iget-object v2, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/n/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    :goto_3
    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 6837
    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_9

    const-string v0, "com.oppo.focus.is.depth.based"

    .line 6838
    invoke-interface {v1, v0, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    .line 6841
    :cond_9
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6842
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 6845
    iget-object v3, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/oppo/camera/ui/preview/h;->a(II[II)V

    .line 6848
    :cond_a
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 6851
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/oppo/camera/e$y;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 6852
    iget-object p1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    invoke-virtual {p1}, Lcom/oppo/camera/e$y;->c()V

    :cond_c
    return-void
.end method

.method private b(Landroid/media/ImageReader;)V
    .locals 13

    .line 1284
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1289
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    const-string v1, "CameraManager"

    if-nez v0, :cond_1

    const-string p1, "onPreviewFrameReceived, image is null"

    .line 1292
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1297
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ae()Z

    move-result v2

    .line 1298
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_blur_mode_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    .line 1299
    invoke-virtual {p0}, Lcom/oppo/camera/e;->m()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v2, :cond_9

    :cond_2
    const/16 v5, 0x11

    .line 1302
    invoke-static {v0, v5}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;I)[B

    move-result-object v5

    if-nez v5, :cond_3

    const-string p1, "onPreviewFrameReceived, bytes is null"

    .line 1305
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    .line 1311
    :cond_3
    iget v6, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v6}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    :goto_0
    const-string v7, "oppo.dump.preview.yuv"

    const-string v8, "false"

    .line 1314
    invoke-static {v7, v8}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "yuv_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ".yuv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "preview_yuv"

    invoke-static {v5, v9, v7}, Lcom/oppo/camera/o/d;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreviewFrameReceived, TYPE_PREVIEW_FRAME, reader.size: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", format: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bytes.size: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", file: yuv_"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1317
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 p1, 0x4c

    const/16 v1, 0x3e8

    .line 1324
    div-int/2addr v1, v6

    const/16 v6, 0x21

    .line 1326
    iget-wide v9, p0, Lcom/oppo/camera/e;->B:J

    sub-long v9, v7, v9

    const-wide/16 v11, 0x3e8

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    const-wide/16 v9, 0x0

    .line 1332
    :cond_6
    iget-wide v11, p0, Lcom/oppo/camera/e;->H:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->H:J

    .line 1333
    iget-wide v11, p0, Lcom/oppo/camera/e;->I:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->I:J

    .line 1334
    iget-wide v11, p0, Lcom/oppo/camera/e;->J:J

    add-long/2addr v11, v9

    iput-wide v11, p0, Lcom/oppo/camera/e;->J:J

    .line 1336
    iput-wide v7, p0, Lcom/oppo/camera/e;->B:J

    if-eqz v3, :cond_7

    .line 1338
    iget-wide v7, p0, Lcom/oppo/camera/e;->H:J

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-ltz v1, :cond_7

    sub-long/2addr v7, v9

    .line 1339
    iput-wide v7, p0, Lcom/oppo/camera/e;->H:J

    .line 1340
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v5, v1, v3}, Lcom/oppo/camera/e;->b([BII)V

    :cond_7
    if-eqz v4, :cond_8

    .line 1343
    iget-wide v3, p0, Lcom/oppo/camera/e;->I:J

    int-to-long v7, p1

    cmp-long p1, v3, v7

    if-ltz p1, :cond_8

    sub-long/2addr v3, v7

    .line 1344
    iput-wide v3, p0, Lcom/oppo/camera/e;->I:J

    .line 1345
    invoke-direct {p0, v5}, Lcom/oppo/camera/e;->a([B)V

    :cond_8
    if-eqz v2, :cond_9

    .line 1348
    iget-wide v1, p0, Lcom/oppo/camera/e;->J:J

    int-to-long v3, v6

    cmp-long p1, v1, v3

    if-ltz p1, :cond_9

    sub-long/2addr v1, v3

    .line 1349
    iput-wide v1, p0, Lcom/oppo/camera/e;->J:J

    .line 1350
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, v5, p1, v1}, Lcom/oppo/camera/e;->a([BII)V

    .line 1354
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->b(Landroid/media/Image;)V

    .line 1355
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    .line 1285
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/e;Landroid/media/ImageReader;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/e;ZZ)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->d(ZZ)V

    return-void
.end method

.method private b(Lcom/oppo/camera/v$a;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 11819
    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 11821
    :cond_1
    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 11829
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeNearMeDateToExif, isJpegPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 11834
    iget-object v0, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->d(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object v0

    goto :goto_1

    .line 11836
    :cond_2
    iget-object v0, p1, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 11843
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ax()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 11849
    :cond_4
    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->J:Ljava/lang/String;

    .line 11850
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->K:Ljava/lang/String;

    .line 11851
    invoke-virtual {p0}, Lcom/oppo/camera/e;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->M:Ljava/lang/String;

    .line 11853
    iget-object v3, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz v3, :cond_6

    array-length v3, v3

    if-lez v3, :cond_6

    .line 11854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11855
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11857
    iget-object v5, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    array-length v6, v5

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    .line 11858
    new-instance v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;

    invoke-direct {v8}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;-><init>()V

    .line 11859
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;->N1:Ljava/lang/String;

    .line 11860
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceSize;->N2:Ljava/lang/String;

    .line 11861
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11863
    new-instance v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;

    invoke-direct {v8}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;-><init>()V

    .line 11864
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L1:Ljava/lang/String;

    .line 11865
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L2:Ljava/lang/String;

    .line 11866
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L3:Ljava/lang/String;

    .line 11867
    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/oppo/camera/statistics/CameraStatisticsUtil$FaceCoordinate;->L4:Ljava/lang/String;

    .line 11868
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11871
    :cond_5
    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->N:Ljava/util/ArrayList;

    .line 11872
    iput-object v4, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->L:Ljava/util/ArrayList;

    .line 11873
    iget v1, p0, Lcom/oppo/camera/e;->u:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->S:Ljava/lang/String;

    .line 11876
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->R:Ljava/lang/String;

    .line 11878
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v3, "MakerNote"

    .line 11879
    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 11882
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 11884
    :try_start_0
    const-class v4, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 11887
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    :cond_7
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_8

    .line 11892
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->A:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->A:Ljava/lang/String;

    .line 11893
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->B:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->B:Ljava/lang/String;

    .line 11894
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->C:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->C:Ljava/util/ArrayList;

    .line 11895
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->I:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->I:Ljava/lang/String;

    .line 11896
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->P:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->P:Ljava/lang/String;

    .line 11897
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->Q:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->Q:Ljava/lang/String;

    .line 11898
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->U:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->U:Ljava/lang/String;

    .line 11899
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->V:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->V:Ljava/lang/String;

    .line 11900
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->PiFlag:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->PiFlag:Ljava/lang/String;

    .line 11901
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->nightFlag:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->nightFlag:Ljava/lang/String;

    .line 11902
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->asdOut:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->asdOut:Ljava/util/ArrayList;

    .line 11903
    iget-object v3, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->iso:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->iso:Ljava/lang/String;

    .line 11904
    iget-object v0, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->expTime:Ljava/lang/String;

    iput-object v0, v2, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->expTime:Ljava/lang/String;

    .line 11907
    :cond_8
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 11909
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 11910
    iput-object v0, p1, Lcom/oppo/camera/v$a;->A:Ljava/lang/String;

    :cond_9
    return-void

    :cond_a
    const-string p1, "writeNearMeDateToExif, picture is invalid"

    .line 11824
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b([BII)V
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1366
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/ui/preview/a/i;->a([BIII)Z

    :cond_0
    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "applyTorchModeOff"

    .line 12957
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_camera_torch_mode_key"

    const-string v1, "off"

    .line 12959
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12961
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12962
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 12963
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12964
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->P:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ad:Z

    return p1
.end method

.method static synthetic bA(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->u:I

    return p0
.end method

.method private bA()V
    .locals 4

    .line 12833
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "key_high_picture_size"

    .line 12837
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 12839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetHighPictureSize, isHighPictureSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraManager"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 12842
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i$a;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_high_resolution_key"

    .line 12843
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic bB(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->v:I

    return p0
.end method

.method private bB()V
    .locals 2

    .line 12848
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 12849
    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    .line 12850
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->d(Z)V

    .line 12851
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->g()V

    .line 12854
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    .line 12855
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->E()V

    :cond_1
    return-void
.end method

.method private bC()V
    .locals 3

    .line 12860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTimerShutterPreference, mPreferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12862
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    .line 12863
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v2, "pref_camera_timer_shutter_key"

    .line 12864
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12865
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "clearTimerShutterPreference, X"

    .line 12868
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bC(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bu()V

    return-void
.end method

.method private bD()V
    .locals 3

    .line 12872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCameraIdPreference, mPreference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12874
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    .line 12875
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v2, "pref_switch_camera_key"

    .line 12876
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12877
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "clearCameraIdPreference X"

    .line 12880
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bD(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->au:Z

    return p0
.end method

.method private bE()V
    .locals 3

    .line 12884
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_MOTOR_FLASHLIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    .line 12886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCameraExitState, motorFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 12889
    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    :cond_0
    return-void
.end method

.method static synthetic bE(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ap:Z

    return p0
.end method

.method private bF()V
    .locals 3

    .line 12894
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_5

    .line 12895
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 12896
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12898
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    .line 12899
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12900
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 12903
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "pref_camera_torch_mode_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 12906
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12907
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    goto :goto_0

    .line 12909
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12911
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_4

    .line 12912
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12913
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 12916
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 12917
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 12920
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12921
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->b(Landroid/content/SharedPreferences;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic bF(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bp()Z

    move-result p0

    return p0
.end method

.method private bG()V
    .locals 4

    .line 12973
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 12974
    new-instance v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;-><init>(Landroid/content/Context;)V

    .line 12975
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCameraId:Ljava/lang/String;

    .line 12976
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCaptureMode:Ljava/lang/String;

    .line 12977
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mOrientation:I

    .line 12978
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    float-to-int v1, v1

    .line 12980
    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mScreenBrightness:I

    .line 12982
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mToCaptureMode:Ljava/lang/String;

    .line 12983
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCaptureType:I

    .line 12984
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 12985
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/SwitchCameraMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic bG(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->ci:Z

    return p0
.end method

.method static synthetic bH(Lcom/oppo/camera/e;)Lcom/google/lens/sdk/LensApi;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    return-object p0
.end method

.method private bH()V
    .locals 2

    .line 13055
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 13056
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 13057
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x6

    .line 13058
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 13059
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13060
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 13061
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13062
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 13063
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 13064
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    .line 13065
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method private bI()V
    .locals 2

    .line 13070
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 13071
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 13072
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x5

    .line 13073
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 13074
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13075
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 13076
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13077
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 13078
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 13079
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic bI(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->be()V

    return-void
.end method

.method private bJ()V
    .locals 4

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 13117
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 13121
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v1, :cond_1

    .line 13122
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f024b

    .line 13123
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13122
    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 13125
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13126
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "off"

    .line 13127
    invoke-virtual {v1, v0, v3, v2}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13128
    invoke-virtual {v1}, Lcom/oppo/camera/i$a;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic bJ(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aZ()Z

    move-result p0

    return p0
.end method

.method private bK()Z
    .locals 4

    .line 13147
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 13149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 13150
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13153
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13157
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 13159
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13160
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 13165
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic bK(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bo()Z

    move-result p0

    return p0
.end method

.method static synthetic bL(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bH()V

    return-void
.end method

.method static synthetic bM(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->C:J

    return-wide v0
.end method

.method static synthetic bN(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->D:J

    return-wide v0
.end method

.method static synthetic bO(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->E:J

    return-wide v0
.end method

.method static synthetic bP(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bs()Z

    move-result p0

    return p0
.end method

.method static synthetic bQ(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bG()V

    return-void
.end method

.method static synthetic bR(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$c;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object p0
.end method

.method static synthetic bS(Lcom/oppo/camera/e;)Ljava/lang/Object;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic bT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$b;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    return-object p0
.end method

.method private ba()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "exitOneCamera"

    .line 4879
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4881
    iget-object v0, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    if-eqz v0, :cond_0

    .line 4882
    invoke-virtual {v0}, Lcom/oppo/camera/e$i;->a()V

    .line 4885
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 4886
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->b()V

    const/4 v0, 0x0

    .line 4887
    iput-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    .line 4890
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bb()V

    const/4 v0, 0x4

    .line 4891
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    .line 4893
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_2

    .line 4894
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aZ()V

    .line 4897
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v0, :cond_3

    .line 4898
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->b()V

    :cond_3
    return-void
.end method

.method static synthetic ba(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->cb:Z

    return p0
.end method

.method static synthetic bb(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$y;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    return-object p0
.end method

.method private bb()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "closeImageReader"

    .line 4903
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4906
    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/a/a;->e()V

    .line 4908
    iget-object v1, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4909
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4910
    iput-object v2, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    .line 4913
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 4914
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4915
    iput-object v2, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    .line 4918
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 4919
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4920
    iput-object v2, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    .line 4923
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 4924
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4925
    iput-object v2, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    .line 4928
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    if-eqz v1, :cond_4

    .line 4929
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4930
    iput-object v2, p0, Lcom/oppo/camera/e;->be:Landroid/media/ImageReader;

    .line 4933
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 4934
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 4935
    iput-object v2, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    .line 4938
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    if-eqz v1, :cond_6

    .line 4939
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4940
    iput-object v2, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    .line 4943
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    if-eqz v1, :cond_7

    .line 4944
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4945
    iput-object v2, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    .line 4948
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    if-eqz v1, :cond_8

    .line 4949
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4950
    iput-object v2, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    .line 4953
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    if-eqz v1, :cond_9

    .line 4954
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 4955
    iput-object v2, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    .line 4958
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_a

    .line 4959
    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->Q()V

    :cond_a
    const-string v1, "closeImageReader X"

    .line 4962
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bc()V
    .locals 2

    .line 4970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/e;->C:J

    const-wide/16 v0, 0x0

    .line 4971
    iput-wide v0, p0, Lcom/oppo/camera/e;->E:J

    .line 4972
    iput-wide v0, p0, Lcom/oppo/camera/e;->F:J

    .line 4973
    iput-wide v0, p0, Lcom/oppo/camera/e;->D:J

    .line 4974
    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    .line 4975
    iput v0, p0, Lcom/oppo/camera/e;->u:I

    return-void
.end method

.method static synthetic bc(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bv()V

    return-void
.end method

.method private bd()V
    .locals 2

    .line 4979
    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    .line 4980
    iput v0, p0, Lcom/oppo/camera/e;->u:I

    const-wide/16 v0, 0x0

    .line 4981
    iput-wide v0, p0, Lcom/oppo/camera/e;->C:J

    .line 4982
    iput-wide v0, p0, Lcom/oppo/camera/e;->D:J

    .line 4983
    iput-wide v0, p0, Lcom/oppo/camera/e;->E:J

    .line 4984
    iput-wide v0, p0, Lcom/oppo/camera/e;->F:J

    return-void
.end method

.method static synthetic bd(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bw()V

    return-void
.end method

.method static synthetic be(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->y:I

    return p0
.end method

.method private be()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "backToLastMode"

    .line 5031
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5033
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 5034
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aP()V

    :cond_0
    return-void
.end method

.method static synthetic bf(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->l:I

    return p0
.end method

.method private bf()V
    .locals 2

    .line 5074
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5075
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->f(Z)V

    .line 5076
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->e(I)V

    .line 5077
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->f(I)V

    :cond_0
    const/4 v0, 0x0

    .line 5080
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic bg(Lcom/oppo/camera/e;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cE:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method private bg()V
    .locals 4

    .line 5556
    new-instance v0, Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/x;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/d/b;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    .line 5557
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->b(I)V

    .line 5558
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    new-instance v1, Lcom/oppo/camera/e$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$g;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(Lcom/oppo/camera/x$a;)V

    .line 5559
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/x;->a(Landroid/view/ViewGroup;)V

    .line 5560
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/x;->a(IZ)V

    return-void
.end method

.method static synthetic bh(Lcom/oppo/camera/e;)Landroid/os/Handler;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cn:Landroid/os/Handler;

    return-object p0
.end method

.method private bh()V
    .locals 6

    .line 5591
    iget-object v0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    const v1, 0x7f060453

    if-eqz v0, :cond_0

    .line 5592
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    .line 5593
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 5594
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060454

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 5595
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 5597
    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v0

    .line 5598
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 5599
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5600
    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aS()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 5603
    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/x;->c(I)V

    .line 5604
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->s(I)V

    return-void
.end method

.method static synthetic bi(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/c;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    return-object p0
.end method

.method private bi()V
    .locals 5

    .line 5826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLockDB, mbLockDbCleared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->cf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    .line 5828
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5829
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    const-string v3, "0==0"

    const/4 v4, 0x0

    .line 5832
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "clearLockDB "

    .line 5834
    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private bj()V
    .locals 2

    .line 6001
    iget-object v0, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    if-nez v0, :cond_0

    .line 6002
    new-instance v0, Lcom/oppo/camera/e$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$r;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    :cond_0
    return-void
.end method

.method static synthetic bj(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->al:Z

    return p0
.end method

.method private bk()Lcom/oppo/camera/e/f$f;
    .locals 2

    .line 6007
    iget-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    if-nez v0, :cond_0

    .line 6008
    new-instance v0, Lcom/oppo/camera/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$e;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    .line 6011
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->ba:Lcom/oppo/camera/e/f$f;

    return-object v0
.end method

.method static synthetic bk(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/control/a;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    return-object p0
.end method

.method private bl()I
    .locals 1

    .line 7077
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 7078
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ac()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic bl(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->aA:Z

    return p0
.end method

.method private bm()V
    .locals 2

    .line 8539
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    const-string v1, "pref_zoom_key"

    .line 8540
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_expand_popbar_key"

    .line 8541
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 8543
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 8544
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8545
    invoke-virtual {p0}, Lcom/oppo/camera/e;->al()V

    const/4 v0, 0x1

    .line 8546
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8548
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    .line 8549
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    :goto_0
    return-void
.end method

.method static synthetic bm(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    return-void
.end method

.method static synthetic bn(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->p:I

    return p0
.end method

.method private bn()Ljava/lang/String;
    .locals 6

    .line 8735
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_5

    const-string v2, "pref_time_lapse_key"

    .line 8737
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8741
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return-object v1

    .line 8745
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_2

    .line 8746
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 8749
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00d0

    .line 8751
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_gesture_shutter_key"

    .line 8750
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8752
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "2"

    .line 8756
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8757
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 8758
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->c()V

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic bo(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/e;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    return-object p0
.end method

.method private bo()Z
    .locals 9

    const-string v0, "isLockAblumHasPicture X"

    const-string v1, "CameraManager"

    const-string v2, "isLockAblumHasPicture"

    .line 8838
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    .line 8840
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 8841
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 8845
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8848
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 8856
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 8859
    :cond_0
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    :try_start_1
    const-string v3, "isLockAblumHasPicture, cursor is null"

    .line 8850
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 8856
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 8859
    :cond_2
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 8853
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLockAblumHasPicture, failed to open cursor error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return v0

    :goto_2
    if-eqz v2, :cond_3

    .line 8856
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 8859
    :cond_3
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic bp(Lcom/oppo/camera/e;)Lcom/oppo/camera/m;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    return-object p0
.end method

.method private bp()Z
    .locals 6

    .line 9725
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "func_torch_soft_light"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 9729
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 9730
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    .line 9729
    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9731
    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    const-string v4, "pref_camera_hdr_mode_key"

    .line 9732
    invoke-static {v4, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 9731
    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    .line 9734
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "on"

    if-nez v3, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 9738
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    return v1
.end method

.method private bq()V
    .locals 2

    .line 10623
    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    if-nez v0, :cond_0

    .line 10624
    new-instance v0, Lcom/oppo/camera/Ipa/e;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/e;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    .line 10625
    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cW:Lcom/oppo/camera/Ipa/e$b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Lcom/oppo/camera/Ipa/e$b;)V

    :cond_0
    return-void
.end method

.method static synthetic bq(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aC()V

    return-void
.end method

.method private br()Lcom/oppo/camera/u;
    .locals 4

    .line 10778
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v1, :cond_0

    .line 10779
    new-instance v2, Lcom/oppo/camera/u;

    new-instance v3, Lcom/oppo/camera/e$s;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e$s;-><init>(Lcom/oppo/camera/e;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/oppo/camera/u;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/e$s;)V

    iput-object v2, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    .line 10782
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    return-object v0
.end method

.method static synthetic br(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result p0

    return p0
.end method

.method private bs()Z
    .locals 3

    .line 11036
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_slogan_key"

    .line 11037
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const-string v2, "pref_slogan_location_key"

    .line 11038
    invoke-virtual {v0, v2}, Lcom/oppo/camera/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    const-string v2, "pref_slogan_time_key"

    .line 11039
    invoke-virtual {v0, v2}, Lcom/oppo/camera/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11040
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->c()Z

    move-result v0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    iget v0, v0, Lcom/oppo/camera/u;->a:I

    if-eq v0, v1, :cond_1

    const-string v0, "checkReadyToCapture, isTimeOrLocationChanged"

    .line 11042
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11044
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->b()V

    .line 11047
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    iget v0, v0, Lcom/oppo/camera/u;->a:I

    if-ne v0, v1, :cond_2

    const-string v0, "checkReadyToCapture, slogan need to update, so return"

    .line 11048
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method static synthetic bs(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->R:Z

    return p0
.end method

.method private bt()V
    .locals 1

    .line 11065
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11066
    invoke-direct {p0}, Lcom/oppo/camera/e;->bu()V

    goto :goto_0

    .line 11068
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    invoke-interface {v0}, Lcom/oppo/camera/ui/control/a;->i()V

    :goto_0
    return-void
.end method

.method static synthetic bt(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aB()V

    return-void
.end method

.method private bu()V
    .locals 2

    const/4 v0, 0x0

    .line 11073
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->B(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11074
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 11075
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->h()V

    :cond_0
    return-void

    .line 11081
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bn()Ljava/lang/String;

    move-result-object v0

    .line 11083
    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/oppo/camera/ui/control/h;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "normal"

    .line 11084
    iput-object v0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    .line 11085
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    return-void

    :cond_2
    const-string v1, "off"

    .line 11087
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11088
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->f(Ljava/lang/String;)V

    return-void

    .line 11092
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->f()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 11093
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->au()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CameraManager"

    const-string v1, "onCameraShutterButtonClick, beforeCameraShutterButtonClick fail, so return"

    .line 11094
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 11099
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->C(Z)V

    return-void
.end method

.method static synthetic bu(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->S:Z

    return p0
.end method

.method static synthetic bv(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->k:I

    return p0
.end method

.method private bv()V
    .locals 1

    .line 11593
    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_0

    .line 11594
    invoke-virtual {v0}, Lcom/oppo/camera/w;->c()V

    :cond_0
    return-void
.end method

.method private bw()V
    .locals 1

    .line 11599
    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_0

    .line 11600
    invoke-virtual {v0}, Lcom/oppo/camera/w;->d()V

    :cond_0
    return-void
.end method

.method static synthetic bw(Lcom/oppo/camera/e;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aP()V

    return-void
.end method

.method static synthetic bx(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$b;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cI:Lcom/oppo/camera/e$b;

    return-object p0
.end method

.method private bx()Z
    .locals 1

    const-string v0, "pref_burst_shot_key"

    .line 11942
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_short_video"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic by(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->aJ()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private by()Z
    .locals 4

    .line 11946
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00d0

    .line 11947
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_camera_gesture_shutter_key"

    .line 11946
    invoke-virtual {v0, v3, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11948
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 11949
    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_camera_gesture_shutter_key"

    .line 11948
    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11951
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic bz(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    return-object p0
.end method

.method private bz()Z
    .locals 1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 12068
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->s:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->D:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bc:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/e;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ae:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->bY:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->F:J

    return-wide p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bb:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic d(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    return-object p1
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "onUp"

    .line 3010
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 3014
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/oppo/camera/e;->s:I

    invoke-virtual {v2, v4, p1}, Lcom/oppo/camera/d/i;->a(ILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUp, getCurrentModeName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    iput v3, p0, Lcom/oppo/camera/e;->s:I

    .line 3019
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    .line 3024
    :cond_0
    iget v0, p0, Lcom/oppo/camera/e;->s:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3039
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->U()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 3041
    invoke-virtual {p0}, Lcom/oppo/camera/e;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3042
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->T()V

    goto :goto_0

    .line 3045
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3046
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->J()V

    goto :goto_0

    .line 3026
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->U()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 3028
    invoke-virtual {p0}, Lcom/oppo/camera/e;->E()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3029
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->S()V

    goto :goto_0

    .line 3032
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3033
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->I()V

    .line 3055
    :cond_5
    :goto_0
    iput v3, p0, Lcom/oppo/camera/e;->s:I

    .line 3057
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d(ZZ)V
    .locals 2

    .line 5084
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->s(I)V

    .line 5086
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5087
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->E()V

    .line 5090
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5091
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->f(Z)V

    .line 5093
    invoke-virtual {p0}, Lcom/oppo/camera/e;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5094
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->e(I)V

    .line 5095
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/h;->f(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5100
    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->O:Z

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->cp:J

    return-wide v0
.end method

.method static synthetic e(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->E:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bd:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic e(Lcom/oppo/camera/e;I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->t(I)V

    return-void
.end method

.method private e(ZZ)V
    .locals 2

    .line 13033
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    .line 13034
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 13035
    invoke-virtual {v0, p2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 p2, 0x1

    .line 13036
    iput p2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 13037
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13038
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/2addr v1, p2

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 13039
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13040
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 13041
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 13042
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    if-eqz p1, :cond_0

    .line 13045
    iput p2, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 13047
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 13050
    :goto_0
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/e;Ljava/lang/String;)Z
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->af:Z

    return p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 6

    .line 5772
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object p1

    .line 5773
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v2

    .line 5774
    invoke-virtual {p1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v2, :cond_0

    const-string p1, "CameraManager"

    const-string v0, "showCaptureModeChangeBlurAnim, null == newSize!"

    .line 5777
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 5782
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v1

    const/4 v4, 0x0

    .line 5783
    iget-object v5, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Landroid/util/Size;ZILcom/oppo/camera/ui/preview/d$a;)Z

    move-result p1

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->co:J

    return-wide v0
.end method

.method static synthetic f(Lcom/oppo/camera/e;J)J
    .locals 0

    .line 194
    iput-wide p1, p0, Lcom/oppo/camera/e;->G:J

    return-wide p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bf:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic f(Lcom/oppo/camera/e;I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->u(I)V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/e;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .line 8712
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-nez v0, :cond_0

    .line 8713
    new-instance v0, Lcom/oppo/camera/ui/control/h;

    invoke-direct {v0}, Lcom/oppo/camera/ui/control/h;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    .line 8714
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    new-instance v1, Lcom/oppo/camera/e$v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$v;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/h;->a(Lcom/oppo/camera/ui/control/h$b;)V

    .line 8717
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aO()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8720
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_camera_photo_ratio_key"

    const-string v2, "standard"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "full"

    .line 8723
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8725
    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget v3, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/oppo/camera/ui/control/h;->a(ILandroid/app/Activity;IZ)V

    .line 8727
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8728
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->z()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ar:Z

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->m:I

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bg:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/e;Ljava/lang/String;)Z
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->L:Z

    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "oppo.camera.test"

    const-string v1, "false"

    .line 9742
    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_size_key"

    .line 9746
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "pref_slow_video_frame_key"

    .line 9747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_photo_ratio_key"

    .line 9748
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9752
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9753
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9754
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->H()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/oppo/camera/e;->q:I

    .line 9755
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    const-string v0, "pref_camera_torch_mode_key"

    .line 9760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9761
    invoke-direct {p0}, Lcom/oppo/camera/e;->bp()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method static synthetic h(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->p:I

    return p1
.end method

.method static synthetic h(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bh:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .line 13019
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 13020
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 13021
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13022
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 13023
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 13024
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 13025
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 13026
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mbVideoRecording:Z

    .line 13027
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildMenuItem(Ljava/lang/String;Lcom/oppo/camera/i;I)V

    .line 13028
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ca:Z

    return p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->u:I

    return p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bi:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    return-object p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    .line 13104
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    .line 13105
    new-instance v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/ReminderMsgData;-><init>(Landroid/content/Context;)V

    .line 13106
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCaptureMode:Ljava/lang/String;

    .line 13107
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCaptureType:I

    .line 13108
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mCameraId:Ljava/lang/String;

    .line 13109
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mOrientation:I

    .line 13110
    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mReminderCodeValue:Ljava/lang/String;

    .line 13111
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cs:Z

    if-eqz p1, :cond_0

    const-string p1, "charge_true"

    goto :goto_0

    :cond_0
    const-string p1, "charge_false"

    :goto_0
    iput-object p1, v0, Lcom/oppo/camera/statistics/model/ReminderMsgData;->mReminderTrigger:Ljava/lang/String;

    .line 13112
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/ReminderMsgData;->report()V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->A(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/e;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/oppo/camera/e;->w:I

    return p1
.end method

.method static synthetic j(Lcom/oppo/camera/e;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oppo/camera/e;->bj:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->aF:Z

    return p1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    .line 13134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 13135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 13136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_high_resolution_key"

    .line 13137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ap:Z

    return p1
.end method

.method static synthetic l(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->Q:Z

    return p1
.end method

.method static synthetic l(Lcom/oppo/camera/e;)[B
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bR:[B

    return-object p0
.end method

.method static synthetic m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    return-object p0
.end method

.method private m(I)V
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-nez v0, :cond_0

    .line 1485
    new-instance v0, Lcom/oppo/camera/t;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    .line 1486
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    iget-object v1, p0, Lcom/oppo/camera/e;->cP:Lcom/oppo/camera/t$c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/t;->a(Lcom/oppo/camera/t$c;)V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/t;->a(I)V

    return-void
.end method

.method static synthetic m(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->aE:Z

    return p1
.end method

.method static synthetic n(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->m:I

    return p0
.end method

.method private n(I)V
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_0

    .line 1494
    invoke-virtual {v0, p1}, Lcom/oppo/camera/t;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->cb:Z

    return p1
.end method

.method static synthetic o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-object p0
.end method

.method private o(I)V
    .locals 2

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSizeRatioType, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    iget v0, p0, Lcom/oppo/camera/e;->cH:I

    if-eq p1, v0, :cond_0

    .line 2319
    iput p1, p0, Lcom/oppo/camera/e;->cH:I

    .line 2320
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v0, p0, Lcom/oppo/camera/e;->cH:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->p(I)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/oppo/camera/e;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->C(Z)V

    return-void
.end method

.method static synthetic p(Lcom/oppo/camera/e;)I
    .locals 0

    .line 194
    iget p0, p0, Lcom/oppo/camera/e;->Y:I

    return p0
.end method

.method private p(I)Z
    .locals 8

    const-string v0, "CameraManager"

    const/16 v1, 0x28a

    .line 3862
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, "temperature_limit_brightness"

    const-string v5, "temperature_limit_brightness"

    const-string v6, "ro.camera.temperature.brightness"

    move-object v2, p0

    .line 3860
    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3867
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreBrightnessTemperatureLimit, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreBrightnessTemperatureLimit, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temperatureValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic p(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->aA:Z

    return p1
.end method

.method static synthetic q(Lcom/oppo/camera/e;Z)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->z(Z)V

    return-void
.end method

.method private q(I)Z
    .locals 8

    const-string v0, "CameraManager"

    const/16 v1, 0x28a

    .line 3886
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v4, "temperature_limit_finish"

    const-string v5, "temperature_limit_finish"

    const-string v6, "ro.camera.temperature.finish"

    move-object v2, p0

    .line 3884
    invoke-direct/range {v2 .. v7}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3891
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useHighTemperatureUltimateLimit, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3896
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useHighTemperatureUltimateLimit, level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temperatureValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method static synthetic q(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->X:Z

    return p0
.end method

.method static synthetic r(Lcom/oppo/camera/e;)I
    .locals 2

    .line 194
    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/e;->Y:I

    return v0
.end method

.method private r(I)V
    .locals 2

    .line 4456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraId, mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    if-ne v0, p1, :cond_0

    return-void

    .line 4462
    :cond_0
    iput p1, p0, Lcom/oppo/camera/e;->q:I

    .line 4464
    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz p1, :cond_1

    .line 4465
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method static synthetic r(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->as:Z

    return p1
.end method

.method static synthetic s(Lcom/oppo/camera/e;)Lcom/oppo/camera/jni/NativeBufferProducer;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->ck:Lcom/oppo/camera/jni/NativeBufferProducer;

    return-object p0
.end method

.method private s(I)V
    .locals 3

    .line 5608
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    .line 5610
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/RotateImageView;

    .line 5611
    invoke-virtual {v0}, Lcom/oppo/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5612
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5613
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060212

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 5614
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic s(Lcom/oppo/camera/e;Z)Z
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ci:Z

    return p1
.end method

.method static synthetic t(Lcom/oppo/camera/e;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/oppo/camera/e;->Z:J

    return-wide v0
.end method

.method private t(I)V
    .locals 7

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 8033
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    .line 8034
    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->aa:Ljava/lang/String;

    return-object p0
.end method

.method private u(I)V
    .locals 1

    .line 10579
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    .line 10580
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(I)V

    .line 10582
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_0

    .line 10583
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10584
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 10587
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->i(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/e;)Lcom/oppo/camera/k;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/e;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/e;->bn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    return-object p0
.end method

.method private z(Z)V
    .locals 2

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabCaptureStart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iput-boolean p1, p0, Lcom/oppo/camera/e;->az:Z

    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/e;)Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Lcom/oppo/camera/e;->an:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "updateOtherSettingFlags"

    .line 2689
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f016f

    .line 2692
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_sound_key"

    .line 2691
    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    .line 2694
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c3

    .line 2695
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_fingerprint_shutter_key"

    .line 2694
    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    .line 2697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOtherSettingFlags, mFingerprintShutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v1, "pref_camera_storage_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    .line 2702
    iget-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2703
    invoke-direct {p0}, Lcom/oppo/camera/e;->aK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aK:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    sput-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "on"

    .line 2709
    sput-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public B()V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 2714
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(F)V

    .line 2715
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->E(Z)V

    .line 2716
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->j(Z)V

    .line 2718
    iput-boolean v1, p0, Lcom/oppo/camera/e;->ay:Z

    return-void
.end method

.method public C()V
    .locals 2

    .line 2722
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2723
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(I)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2726
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(F)V

    .line 2727
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->E(Z)V

    .line 2728
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->j(Z)V

    .line 2730
    iput-boolean v1, p0, Lcom/oppo/camera/e;->ay:Z

    return-void
.end method

.method public D()Z
    .locals 3

    .line 2734
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 2735
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 2734
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 2737
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    .line 2738
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    const-string v1, "func_torch_soft_light"

    .line 2740
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2741
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 4

    .line 2892
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2898
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v3, :cond_3

    .line 2899
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2900
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2901
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2902
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_3

    .line 2906
    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2909
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 2910
    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_1

    .line 2912
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2913
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2914
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 2916
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRespondTouch, mbInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getScreenTorchState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2917
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2918
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->as()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsCapturingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2919
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->L()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSnapShotProgress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingVideoProfile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ad:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSizeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFirstPreviewOK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ae:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canScrollChangeMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFrameAvailable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbTabCaptureStart: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMainShutterButtonType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2927
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraEntry.getCameraEntryType(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 2928
    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbBurstShot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeManager.isAllowSwitch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2932
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->G()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTimerSnapShotRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2916
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2893
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRespondTouch, mModeManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraUIManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public F()Z
    .locals 4

    .line 2942
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2948
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz v3, :cond_4

    .line 2949
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2950
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->as()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2951
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2952
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2953
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->V:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    if-eqz v0, :cond_4

    .line 2957
    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->az:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2959
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 2960
    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oppo/camera/e;->Y:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->U:Z

    if-nez v0, :cond_1

    .line 2963
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2964
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2965
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2967
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2968
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->A()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2969
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2970
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aT()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2971
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2972
    invoke-virtual {p0}, Lcom/oppo/camera/e;->av()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2973
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aU()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2974
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aV()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    .line 2975
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowSwitchMode, mbInitialized: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->au:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getScreenTorchState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2976
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2977
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->as()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsCapturingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2978
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->L()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getIsShowPostCaptureAlert: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2979
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->X()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSnapShotProgress: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingVideoProfile: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ad:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSizeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbFirstPreviewOK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ae:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canScrollChangeMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    invoke-direct {p0}, Lcom/oppo/camera/e;->aT()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbTabCaptureStart: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->az:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMainShutterButtonType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2986
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraEntry.getCameraEntryType(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 2987
    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbBurstShot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mReceiveBurstPictureCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/e;->Y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mModeManager.isAllowSwitch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2992
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->G()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTimerSnapShotRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isModeTitleShow: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2995
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAnyModeAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2996
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->A()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceBeautyMenuOpen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 2997
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", faceBeautyMenuType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2998
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aT()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isStickerMenuOpen: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 2999
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aC()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isZoomAnimRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-virtual {p0}, Lcom/oppo/camera/e;->av()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFilterEffectMenuAnimRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 3001
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aU()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNightAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 3002
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aV()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2975
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2943
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowSwitchMode, mModeManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCameraUIManager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public G()Z
    .locals 1

    .line 3075
    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 3

    .line 3079
    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-nez v0, :cond_0

    .line 3080
    new-instance v0, Lcom/oppo/camera/n;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    .line 3083
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3084
    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3085
    new-instance v1, Lcom/oppo/camera/e$17;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$17;-><init>(Lcom/oppo/camera/e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3100
    iget-object v1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/n;->a(Landroid/content/SharedPreferences;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public I()V
    .locals 3

    .line 3104
    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    if-nez v0, :cond_0

    .line 3105
    new-instance v0, Lcom/oppo/camera/s;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/e$18;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$18;-><init>(Lcom/oppo/camera/e;)V

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/s;-><init>(Landroid/app/Activity;Lcom/oppo/camera/s$a;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    .line 3113
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/s;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 3115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPrivacyPolicyAlertDialog, isShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 3118
    invoke-virtual {p0}, Lcom/oppo/camera/e;->H()Z

    :cond_1
    return-void
.end method

.method public J()V
    .locals 1

    .line 3645
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 3646
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->t()V

    :cond_0
    return-void
.end method

.method public K()I
    .locals 2

    .line 3783
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3785
    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method public L()V
    .locals 9

    const-string v0, "outputY"

    const-string v1, "outputX"

    const-string v2, "aspectY"

    const-string v3, "aspectX"

    .line 4129
    iget-boolean v4, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/e;->bR:[B

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 4133
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAttach, mCropValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mSaveUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mJpegImageData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/e;->bR:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraManager"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4136
    iget-object v4, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 4140
    iget-object v0, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 4141
    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/net/Uri;)V

    .line 4146
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4149
    iget-object v0, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4150
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 4153
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4154
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4173
    :cond_2
    :goto_0
    invoke-static {v6}, Lcom/oppo/camera/o/d;->a(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4169
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAttach, SecurityException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4171
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAttach, IOException error, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4163
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4164
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4165
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4173
    :goto_1
    invoke-static {v6}, Lcom/oppo/camera/o/d;->a(Ljava/io/Closeable;)V

    throw v0

    .line 4176
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->b([B)I

    move-result v0

    .line 4177
    iget-object v2, p0, Lcom/oppo/camera/e;->bR:[B

    const v3, 0xc800

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4178
    invoke-static {v2, v0}, Lcom/oppo/camera/o/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4179
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4180
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 4185
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v5, "crop-temp"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 4187
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/oppo/camera/l/a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/camera/e;->bR:[B

    invoke-static {v5, v7, v8}, Lcom/oppo/camera/l/a;->b(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 4188
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    .line 4190
    :cond_5
    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setResult(I)V

    .line 4191
    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 4194
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4196
    iget-object v5, p0, Lcom/oppo/camera/e;->aI:Ljava/lang/String;

    const-string v8, "circle"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "circleCrop"

    const-string v8, "true"

    .line 4197
    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    :cond_6
    iget-object v5, p0, Lcom/oppo/camera/e;->bM:Landroid/net/Uri;

    if-eqz v5, :cond_7

    const-string v8, "output"

    .line 4201
    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    const-string v8, "return-data"

    .line 4203
    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4206
    :goto_3
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.camera.action.CROP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4210
    :try_start_2
    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 4211
    iget-object v8, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4212
    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4213
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4214
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    const-string v0, "image/*"

    .line 4216
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_set_as_contract"

    const-string v1, "set_as_contract"

    .line 4217
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4218
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4219
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 4221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4222
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setResult(I)V

    .line 4223
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_4
    return-void
.end method

.method public M()I
    .locals 3

    .line 4229
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public N()V
    .locals 4

    .line 4233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchPreviewCb, mCameraSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4235
    new-instance v0, Lcom/oppo/camera/e$f;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$f;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    .line 4236
    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/e$f;->b:Landroid/util/Size;

    .line 4237
    iget-object v0, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iput v2, v0, Lcom/oppo/camera/e$f;->c:I

    .line 4238
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v0

    .line 4239
    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->aC()Lcom/oppo/camera/d/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "setSwitchPreviewCb, use realTime bitmap"

    .line 4242
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    iget-object v1, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    iput-object v0, v1, Lcom/oppo/camera/e$f;->e:Lcom/oppo/camera/d/a$a;

    const/4 v0, 0x0

    .line 4245
    iput-object v0, v1, Lcom/oppo/camera/e$f;->a:[B

    const/4 v0, 0x1

    .line 4246
    iput-boolean v0, v1, Lcom/oppo/camera/e$f;->f:Z

    goto :goto_0

    :cond_0
    const-string v0, "CaptureOnePreview"

    .line 4248
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 4250
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    new-instance v1, Lcom/oppo/camera/e$20;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$20;-><init>(Lcom/oppo/camera/e;)V

    sget-object v2, Lcom/oppo/camera/gl/t$a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public O()Z
    .locals 2

    .line 4481
    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public P()Z
    .locals 1

    .line 4485
    iget v0, p0, Lcom/oppo/camera/e;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 2

    .line 4489
    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R()Z
    .locals 2

    .line 4493
    iget v0, p0, Lcom/oppo/camera/e;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Z
    .locals 1

    .line 4506
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .line 4510
    iget-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    return v0
.end method

.method public U()V
    .locals 2

    const/4 v0, 0x1

    .line 4533
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ag:Z

    const/4 v1, 0x0

    .line 4534
    invoke-direct {p0, v0, v1, v1}, Lcom/oppo/camera/e;->a(ZZZ)V

    .line 4535
    invoke-virtual {p0}, Lcom/oppo/camera/e;->af()V

    .line 4536
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->f()V

    return-void
.end method

.method public V()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onPreviewDataReceived"

    .line 4650
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 4653
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aa()V

    :cond_0
    const/4 v0, 0x0

    .line 4656
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    return-void
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 4966
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public X()Z
    .locals 4

    .line 4988
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    const-string v1, "CameraManager"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 4990
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_1

    .line 4991
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->b(Z)Z

    :cond_1
    const-string v0, "onBackPressed, cameraState return"

    .line 4994
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4996
    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    .line 5001
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onBackPressed, mCameraUIManager return"

    .line 5002
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5004
    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    .line 5008
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5009
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    const-string v0, "normal"

    .line 5010
    iput-object v0, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    .line 5011
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->a(ZZ)V

    .line 5012
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    .line 5013
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->c(ZZ)V

    .line 5014
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 5015
    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    .line 5020
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "onBackPressed, Capmode processing other,so return"

    .line 5021
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    iget-object v0, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v0}, Lcom/oppo/camera/f;->d()V

    return v2

    :cond_5
    return v3
.end method

.method public Y()V
    .locals 3

    .line 5154
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    iput-object v0, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    .line 5156
    iget-object v0, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    if-eqz v0, :cond_1

    .line 5157
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    .line 5159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 5160
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shortcut_sticker_capture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5161
    iget-object v1, p0, Lcom/oppo/camera/e;->bP:Landroid/content/pm/ShortcutManager;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z()V
    .locals 3

    .line 5173
    iget-object v0, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "sticker_switch"

    .line 5174
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStickerModeFromRUS, stikerModeSwitch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    const-string v0, "on"

    .line 5181
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5184
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oppo/camera/config/CameraConfig;->setConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;Z)V

    goto :goto_0

    .line 5186
    :cond_1
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/config/CameraConfig;->setConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;I)Ljava/lang/String;
    .locals 2

    .line 10794
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz v0, :cond_0

    .line 10795
    invoke-virtual {v0}, Lcom/oppo/camera/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_camera_slogan_key"

    .line 10796
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10797
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/u;->a(Landroid/util/Size;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onStop"

    .line 1101
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->S()V

    .line 1107
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/e;->ba()V

    const/4 v0, 0x3

    .line 1108
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->n(I)V

    .line 1110
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->F()V

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1115
    invoke-direct {p0}, Lcom/oppo/camera/e;->bm()V

    .line 1118
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e;->as:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x32

    .line 1120
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 3

    .line 2433
    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 2438
    invoke-virtual {p0}, Lcom/oppo/camera/e;->z()V

    goto :goto_0

    .line 2440
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 2443
    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 2444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeScreenBrightness, fSysBrightness >= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", so no need set window screenBrightness"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraManager"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_2

    float-to-int v0, v0

    .line 2448
    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_2
    return-void

    .line 2454
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2455
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2456
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2457
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2459
    iget v0, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 2461
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_4

    float-to-int v0, v0

    .line 2462
    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 12029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZoomValue, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", submit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12031
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 12032
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    .line 12035
    iget-object p2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 12038
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/e;->b(F)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1632
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e;->b(II)V

    .line 1634
    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1635
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oppo/camera/e;->t:[I

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->t:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1639
    aput p2, v0, p1

    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    .line 1617
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1618
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1619
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;ZZ)V
    .locals 3

    .line 9644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEmptyThumbnail, timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateThumbnail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", postThumbnail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9647
    new-instance v0, Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$c;-><init>()V

    const/4 v1, 0x0

    .line 9648
    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    .line 9649
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    const-string v2, "jpeg"

    .line 9650
    iput-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->c:Ljava/lang/String;

    .line 9651
    iput-object v1, v0, Lcom/oppo/camera/Ipa/b$c;->e:Landroid/graphics/Bitmap;

    .line 9652
    iput-wide p1, v0, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 9653
    iget-object p1, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    iput-object p1, v0, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    .line 9654
    iput-object p3, v0, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    .line 9655
    iput-boolean p5, v0, Lcom/oppo/camera/Ipa/b$c;->n:Z

    if-eqz p4, :cond_0

    .line 9658
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->O()I

    move-result p1

    iput p1, v0, Lcom/oppo/camera/Ipa/b$c;->m:I

    .line 9659
    new-instance p1, Lcom/oppo/camera/e$36;

    invoke-direct {p1, p0}, Lcom/oppo/camera/e$36;-><init>(Lcom/oppo/camera/e;)V

    iput-object p1, v0, Lcom/oppo/camera/Ipa/b$c;->o:Lcom/oppo/camera/ui/control/e$a;

    .line 9681
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_1

    .line 9682
    invoke-virtual {p1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$c;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 11633
    check-cast p2, Lcom/oppo/camera/Ipa/ImageProcessService$c;

    invoke-virtual {p2}, Lcom/oppo/camera/Ipa/ImageProcessService$c;->a()Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    .line 11635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected, mIpaService: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11637
    iget-object p1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_0

    .line 11638
    invoke-virtual {p1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a()V

    .line 11639
    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/Ipa/ImageProcessService;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/location/Location;)V
    .locals 6

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 11923
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    const-string v1, "CameraManager"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onLocationUpdated, GetAddressThread is running"

    .line 11924
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11929
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/e;->G:J

    sub-long/2addr v2, v4

    .line 11931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationUpdated, mLastGetAddressTimesGap: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 11933
    iget-object v0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    if-nez v0, :cond_3

    .line 11934
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationUpdated, lat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11936
    new-instance v0, Lcom/oppo/camera/e$j;

    const-string v1, "get_address_thread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oppo/camera/e$j;-><init>(Lcom/oppo/camera/e;Ljava/lang/String;Landroid/content/Context;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    .line 11937
    iget-object p1, p0, Lcom/oppo/camera/e;->bG:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 10

    .line 11644
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 11645
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.media.EXTRA_RECORD_START_PACKAGE_TYPE"

    .line 11646
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 11648
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiver, intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraManager"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 11654
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    .line 11655
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 11657
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 11658
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    .line 11659
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    .line 11661
    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oppo/camera/e;->ai:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 11665
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne p1, v5, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    .line 11667
    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 11668
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 11669
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 11671
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v7, 0x7f0f0179

    const-string v8, "pref_camera_storage_key"

    const-string v9, "on"

    if-eqz v2, :cond_7

    .line 11672
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 11673
    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11672
    invoke-virtual {p1, v8, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11674
    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->a()V

    .line 11677
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    .line 11678
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    :cond_7
    const-string v2, "android.intent.action.MEDIA_PRE_SHARED"

    .line 11679
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "android.intent.action.MEDIA_SHARED"

    .line 11680
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 11681
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v2, "com.oppo.gallery3d.action.DELETE_PICTURE"

    .line 11686
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 11687
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_1b

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    if-nez v2, :cond_1b

    .line 11688
    invoke-virtual {p1, v6}, Lcom/oppo/camera/ui/e;->c(Z)V

    goto/16 :goto_4

    .line 11690
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    const-string v5, "level"

    .line 11691
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/oppo/camera/e;->a:I

    .line 11692
    iget v5, p0, Lcom/oppo/camera/e;->a:I

    invoke-virtual {p0, v5}, Lcom/oppo/camera/e;->g(I)V

    const-string v5, "temperature"

    .line 11693
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/e;->b:I

    .line 11694
    iget p1, p0, Lcom/oppo/camera/e;->b:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->f(I)V

    goto/16 :goto_4

    .line 11695
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "clearLockDB"

    if-eqz v2, :cond_d

    .line 11696
    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    .line 11698
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_b

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v2, :cond_b

    .line 11699
    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->e(Z)V

    .line 11702
    :cond_b
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_c

    .line 11703
    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v2, Lcom/oppo/camera/e$47;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$47;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v2, v7}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11710
    iput-boolean v5, p0, Lcom/oppo/camera/e;->cf:Z

    .line 11713
    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->n()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 11714
    invoke-virtual {p0}, Lcom/oppo/camera/e;->b()V

    goto/16 :goto_4

    .line 11716
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 11717
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_1b

    .line 11718
    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-eqz p1, :cond_e

    .line 11719
    invoke-virtual {p0, v5}, Lcom/oppo/camera/e;->u(Z)V

    .line 11722
    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->N()Lcom/oppo/camera/ui/control/e;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 11723
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->Z()V

    goto/16 :goto_4

    :cond_f
    const-string v2, "android.media.ACTION_AUDIO_RECORD_INVALID"

    .line 11726
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_10

    .line 11727
    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->an()V

    goto/16 :goto_4

    :cond_10
    const-string v2, "android.intent.action.PHONE_STATE"

    .line 11728
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "state"

    .line 11729
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11730
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v6, "phone"

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 11731
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/e;->y:I

    if-eqz p1, :cond_1b

    .line 11734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiver, phone state: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mPhoneState: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oppo/camera/e;->y:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11736
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    .line 11739
    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "onReceiver, phone offhook, forceStopVideoRecording"

    .line 11740
    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11742
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/d/i;->f(Z)V

    goto/16 :goto_4

    :cond_11
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 11745
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "reason"

    .line 11746
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceiver, ACTION_CLOSE_SYSTEM_DIALOGS, reason:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "homekey"

    .line 11750
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "recentapps"

    .line 11751
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_12
    const-string p1, "onReceiver, system dialog reason, saveCameraExitState"

    .line 11752
    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11755
    invoke-direct {p0}, Lcom/oppo/camera/e;->bJ()V

    .line 11756
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->a()V

    .line 11757
    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    .line 11758
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->n()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 11759
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_13

    .line 11760
    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->e(Z)V

    .line 11763
    :cond_13
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_14

    .line 11764
    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v2, Lcom/oppo/camera/e$48;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$48;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {p1, v2, v7}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 11771
    iput-boolean v5, p0, Lcom/oppo/camera/e;->cf:Z

    .line 11774
    :cond_14
    invoke-static {}, Lcom/oppo/camera/MyApplication;->c()V

    goto/16 :goto_4

    :cond_15
    const-string p1, "com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED"

    .line 11777
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_18

    .line 11778
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 11779
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/d/i;->b(Z)Z

    goto :goto_4

    .line 11780
    :cond_16
    iget-object p1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/h;->e()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 11781
    iget-object p1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/control/h;->g()V

    goto :goto_4

    .line 11782
    :cond_17
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 11783
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1, v6}, Lcom/oppo/camera/d/i;->f(Z)V

    goto :goto_4

    :cond_18
    const-string p1, "com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START"

    .line 11785
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 11786
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 11682
    :cond_19
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 11683
    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11682
    invoke-virtual {p1, v8, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 11684
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4

    .line 11656
    :cond_1a
    :goto_3
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    .line 11789
    :cond_1b
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiver X, intent action: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 7299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged, key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraManager"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7301
    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7302
    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->h(Ljava/lang/String;)V

    .line 7305
    :cond_0
    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v3, :cond_1

    .line 7306
    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 7309
    :cond_1
    iget-object v3, v0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v3, :cond_2

    .line 7310
    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 7313
    :cond_2
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v3, :cond_3

    .line 7314
    invoke-virtual {v3, v1, v2}, Lcom/oppo/camera/d/i;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_3
    const-string v3, "pref_camera_id_key"

    .line 7317
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 7318
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->M()I

    move-result v1

    .line 7320
    iget v2, v0, Lcom/oppo/camera/e;->q:I

    if-ne v2, v1, :cond_4

    return-void

    .line 7324
    :cond_4
    iget-object v2, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->g()V

    .line 7327
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bJ()V

    .line 7328
    invoke-direct {v0, v1, v5, v6}, Lcom/oppo/camera/e;->a(IZZ)V

    return-void

    :cond_5
    const-string v4, "pref_camera_mode_key"

    .line 7332
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7333
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 7335
    iget-object v4, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 7336
    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->r()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v6

    :goto_0
    invoke-static {v4}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 7335
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7336
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7337
    iput-boolean v6, v0, Lcom/oppo/camera/e;->ag:Z

    .line 7339
    iget-object v1, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->g()V

    .line 7342
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bJ()V

    .line 7343
    invoke-direct {v0, v6, v5, v6}, Lcom/oppo/camera/e;->a(ZZZ)V

    :cond_7
    return-void

    :cond_8
    const-string v7, "pref_subsetting_key"

    .line 7349
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "on"

    const-string v10, "off"

    if-eqz v8, :cond_a

    .line 7350
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_9

    .line 7351
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v7, v10}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7352
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 7353
    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->t(Z)V

    if-nez v1, :cond_9

    .line 7355
    iget-boolean v1, v0, Lcom/oppo/camera/e;->U:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 7356
    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7357
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7358
    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 7359
    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v2

    .line 7358
    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v1

    .line 7360
    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v4, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v7, 0x7f0f0124

    new-array v5, v5, [Ljava/lang/Object;

    .line 7361
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501d2

    .line 7360
    invoke-virtual {v3, v1, v6, v2}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;II)V

    :cond_9
    return-void

    :cond_a
    const-string v7, "pref_setting_key"

    .line 7369
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "pref_video_size_key"

    const-string v11, "key_high_picture_size"

    const-string v12, "pref_camera_photo_ratio_key"

    if-eqz v7, :cond_b

    .line 7370
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.oppo.camera.action.SETTING_MENU"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7371
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 7372
    iget v14, v0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7373
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v14, "pref_camera_tap_shutter_key"

    .line 7374
    invoke-virtual {v3, v14}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "pref_camera_tap_shutter_key"

    .line 7373
    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7375
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v14, "pref_camera_gesture_shutter_key"

    .line 7376
    invoke-virtual {v3, v14}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "pref_camera_gesture_shutter_key"

    .line 7375
    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7377
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7378
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->e()Z

    move-result v3

    const-string v14, "key_is_capture_mode"

    invoke-virtual {v13, v14, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7379
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7380
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7381
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7382
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_mirror_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_mirror_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7383
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_slogan_key"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_slogan_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7384
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->P()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_full_pic_size_type"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_raw_key"

    .line 7385
    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_raw_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "pref_camera_gradienter_key"

    .line 7386
    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_camera_gradienter_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7387
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_time_lapse_key"

    .line 7388
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_time_lapse_key"

    .line 7387
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7390
    invoke-virtual {v0, v11}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    .line 7389
    invoke-virtual {v13, v11, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7391
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aP()I

    move-result v3

    const-string v4, "pref_video_fps_key"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7392
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "key_support_video_high_fps"

    .line 7393
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "key_support_video_high_fps"

    .line 7392
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7394
    iget-object v3, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    const-string v4, "camera_enter_type"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7395
    iget-object v3, v0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->n()Z

    move-result v3

    const-string v4, "camera_enter_form_lock_screen"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7396
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_video_ratio_key"

    .line 7398
    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_video_ratio_key"

    .line 7397
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "pref_video_codec_key"

    .line 7400
    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pref_video_codec_key"

    .line 7399
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7401
    iget-object v3, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 7402
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->bb()Z

    move-result v3

    const-string v4, "key_support_video_ultra_wide_angel"

    .line 7401
    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "camera_intent_data"

    .line 7403
    invoke-virtual {v7, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7404
    invoke-virtual {v0, v5}, Lcom/oppo/camera/e;->y(Z)V

    .line 7406
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bI()V

    .line 7407
    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7410
    :cond_b
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "pref_slow_video_frame_key"

    .line 7411
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "pref_video_fps_key"

    .line 7412
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_e

    :cond_c
    const-string v3, "pref_switch_camera_key"

    .line 7420
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7421
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aP()V

    return-void

    .line 7425
    :cond_d
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "standard"

    const-string v7, "pref_camera_high_resolution_key"

    const-string v8, "standard_high"

    if-eqz v3, :cond_f

    .line 7426
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v2, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7429
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7430
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v12, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7432
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 7433
    iget-object v2, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2, v3, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7434
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7435
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    invoke-virtual {v1, v11, v6}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7437
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_e

    .line 7438
    invoke-virtual {v1, v7}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 7443
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aN()V

    return-void

    :cond_f
    const-string v3, "pref_camera_timer_shutter_key"

    .line 7447
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 7448
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v4, 0x7f0f015c

    .line 7449
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_timer_shutter_key"

    .line 7448
    invoke-virtual {v1, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "normal"

    .line 7451
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7452
    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 7454
    :cond_10
    invoke-direct {v0, v2, v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    :goto_1
    return-void

    .line 7460
    :cond_11
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 7461
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v3, v6}, Lcom/oppo/camera/i;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7464
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 7465
    :cond_12
    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    invoke-virtual {v3, v12, v1}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7466
    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    .line 7467
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 7466
    invoke-virtual {v3, v11, v4}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 7467
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7469
    iget-object v3, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v3, :cond_13

    .line 7470
    invoke-virtual {v3, v12}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 7473
    :cond_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7474
    invoke-direct {v0, v2, v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 7476
    :cond_14
    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    :cond_15
    :goto_2
    const-string v3, "square"

    .line 7480
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "full"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7481
    :cond_16
    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    .line 7482
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 7481
    invoke-virtual {v3, v11, v1}, Lcom/oppo/camera/i$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7482
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7484
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_17

    .line 7485
    invoke-virtual {v1, v12}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 7488
    :cond_17
    invoke-direct {v0, v2, v6}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Z)V

    .line 7491
    :cond_18
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_1c

    .line 7492
    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->f()V

    .line 7494
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v11, v6}, Lcom/oppo/camera/i;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 7495
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "func_face_beauty_process"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 7496
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 7497
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6, v6, v6}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    .line 7500
    :cond_19
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    .line 7503
    :cond_1a
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v2, "pref_filter_process_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 7504
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v5, v6}, Lcom/oppo/camera/ui/e;->h(ZZ)V

    goto :goto_3

    .line 7507
    :cond_1b
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/e;->m(Z)V

    .line 7509
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 7510
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v6}, Lcom/oppo/camera/ui/e;->n(Z)V

    :cond_1c
    :goto_3
    return-void

    :cond_1d
    const-string v3, "pref_camera_hdr_mode_key"

    .line 7518
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 7519
    invoke-direct {v0, v2}, Lcom/oppo/camera/e;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 7520
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aR()V

    goto :goto_4

    .line 7522
    :cond_1e
    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7523
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/i;->j(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_1f
    const-string v3, "pref_high_resolution_key"

    .line 7529
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    .line 7530
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return-void

    :cond_20
    const-string v3, "pref_camera_flashmode_key"

    .line 7535
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 7536
    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    .line 7537
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 7536
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7539
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7540
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->s()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 7541
    invoke-virtual {v0, v6}, Lcom/oppo/camera/e;->r(Z)V

    .line 7542
    invoke-virtual {v0, v6, v5}, Lcom/oppo/camera/e;->b(ZZ)V

    :cond_21
    return-void

    :cond_22
    const-string v3, "pref_camera_videoflashmode_key"

    .line 7549
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 7550
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_2a

    .line 7551
    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7553
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_23

    .line 7554
    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object v1

    .line 7557
    :cond_23
    sget-boolean v2, Lcom/oppo/camera/Camera;->b:Z

    if-nez v2, :cond_26

    sget-boolean v2, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v2, :cond_24

    goto :goto_6

    :cond_24
    const-string v2, "torch"

    .line 7578
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 7579
    iget-object v7, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v8, -0x1

    const v9, 0x7f0703de

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    goto :goto_5

    .line 7582
    :cond_25
    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v6, v5, v5}, Lcom/oppo/camera/ui/e;->a(ZZZ)V

    .line 7585
    :goto_5
    iget-object v2, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_2a

    .line 7586
    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 7587
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_8

    .line 7558
    :cond_26
    :goto_6
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 7559
    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_27

    .line 7560
    iget-object v11, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v12, 0x7f0f00e1

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const-string v1, "temps_flash"

    .line 7562
    invoke-direct {v0, v1}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    goto :goto_7

    .line 7563
    :cond_27
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v1, :cond_28

    .line 7564
    iget-object v11, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v12, 0x7f0f00f3

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    .line 7568
    :cond_28
    :goto_7
    iget-object v1, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    .line 7569
    invoke-interface {v1, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7570
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7571
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    .line 7574
    :cond_29
    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2a

    .line 7575
    invoke-virtual {v1, v6, v6}, Lcom/oppo/camera/d/i;->a(ZZ)V

    :cond_2a
    :goto_8
    return-void

    :cond_2b
    const-string v3, "pref_camera_torch_mode_key"

    .line 7595
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7596
    iget-object v2, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 7597
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    .line 7596
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7598
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "func_torch_soft_light"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 7599
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 7600
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v2, "torch"

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    goto :goto_9

    .line 7602
    :cond_2c
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v10}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 7605
    :goto_9
    iget-object v1, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_b

    .line 7607
    :cond_2d
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_a

    :cond_2e
    const/high16 v1, -0x40800000    # -1.0f

    .line 7610
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(F)V

    goto :goto_b

    :cond_2f
    :goto_a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7608
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(F)V

    :goto_b
    return-void

    :cond_30
    const-string v1, "key_filter_index"

    .line 7617
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 7618
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_31

    .line 7619
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->G(Z)V

    :cond_31
    return-void

    :cond_32
    const-string v1, "pref_camera_vivid_effect_key"

    .line 7625
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7626
    iget-boolean v1, v0, Lcom/oppo/camera/e;->X:Z

    if-nez v1, :cond_34

    const v1, 0x7f0f01ba

    .line 7629
    iget-object v2, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->ah()Z

    move-result v2

    if-eqz v2, :cond_33

    const v1, 0x7f0f01be

    :cond_33
    move v3, v1

    .line 7633
    iget-object v2, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v2, :cond_34

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7634
    invoke-virtual/range {v2 .. v7}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_34
    return-void

    :cond_35
    const-string v1, "pref_current_sticker_uuid"

    .line 7641
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 7642
    iget-object v1, v0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v3, v0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v1

    .line 7644
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    iget v4, v0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_36

    iget v3, v0, Lcom/oppo/camera/e;->q:I

    .line 7645
    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_37

    :cond_36
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    iget v4, v0, Lcom/oppo/camera/e;->q:I

    .line 7646
    invoke-static {v3, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-eqz v3, :cond_38

    iget v3, v0, Lcom/oppo/camera/e;->q:I

    .line 7647
    invoke-static {v1, v3}, Lcom/oppo/camera/ui/preview/a/h;->a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 7648
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aS()V

    goto :goto_c

    .line 7650
    :cond_38
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 7651
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->m()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 7652
    iget-object v3, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v4, "type_preview_frame"

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(Ljava/lang/String;)V

    goto :goto_c

    .line 7654
    :cond_39
    iget-object v3, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 7655
    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->c(Lcom/oppo/camera/sticker/data/StickerItem;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 7656
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->m()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 7657
    iget-object v3, v0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v4, "type_preview_frame"

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    .line 7662
    :cond_3a
    :goto_c
    iput-object v1, v0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    :cond_3b
    const-string v1, "pref_switch_dual_camera_key"

    .line 7665
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 7666
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/e;->M()I

    move-result v1

    invoke-direct {v0, v1, v5, v5}, Lcom/oppo/camera/e;->a(IZZ)V

    return-void

    :cond_3c
    const-string v1, "pref_common_facebeauty_level_menu"

    .line 7670
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "pref_portrait_facebeauty_level_menu"

    .line 7671
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "pref_sticker_facebeauty_level_menu"

    .line 7672
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_d

    :cond_3d
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 7680
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 7681
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aP()V

    :cond_3e
    return-void

    .line 7673
    :cond_3f
    :goto_d
    iget-object v1, v0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v1, :cond_40

    .line 7674
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->G(Z)V

    :cond_40
    return-void

    .line 7413
    :cond_41
    :goto_e
    iget-object v1, v0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v1

    if-nez v1, :cond_42

    iget-boolean v1, v0, Lcom/oppo/camera/e;->W:Z

    if-nez v1, :cond_42

    .line 7414
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/e;->aO()V

    :cond_42
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V
    .locals 9

    .line 4516
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 4517
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    .line 4518
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v2

    .line 4520
    invoke-static {v0}, Lcom/oppo/camera/o/d;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 4521
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/oppo/camera/ui/e;->a(BZ)V

    :cond_0
    if-eq v0, v2, :cond_1

    .line 4525
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/e;->c(II)V

    .line 4528
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(Landroid/graphics/Bitmap;Landroid/util/Size;Landroid/util/Size;Lcom/oppo/camera/ui/preview/d$a;I)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7

    .line 4546
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 4552
    :cond_0
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v2, "com.oppo.ai.scene.app.data"

    .line 4553
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4555
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->af()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->L()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4556
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 4557
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    .line 4559
    iget v4, p0, Lcom/oppo/camera/e;->v:I

    if-eq v4, v2, :cond_1

    .line 4560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4562
    iput v2, p0, Lcom/oppo/camera/e;->v:I

    .line 4563
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v2, v4}, Lcom/oppo/camera/ui/e;->s(I)V

    .line 4564
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v4, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v2, v4}, Lcom/oppo/camera/d/i;->g(I)V

    :cond_1
    const-string v2, "com.oppo.iris.aperture.switching"

    .line 4569
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 4574
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    if-lez v5, :cond_5

    .line 4575
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v3

    if-ne v2, v4, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    .line 4577
    :goto_0
    iput-boolean v5, p0, Lcom/oppo/camera/e;->aB:Z

    .line 4579
    iget-boolean v5, p0, Lcom/oppo/camera/e;->aB:Z

    if-eqz v5, :cond_3

    .line 4580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewCaptureResult, apertureSwitchValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aB:Z

    if-eqz v1, :cond_4

    .line 4584
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    goto :goto_1

    .line 4586
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/oppo/camera/ui/preview/e;->b(Z)V

    :cond_5
    :goto_1
    const-string v1, "display.iso"

    .line 4591
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4594
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4596
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/oppo/camera/e;->a(IZ)V

    :cond_6
    const-string v1, "post.process"

    .line 4599
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4602
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 4604
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_7

    const/16 v2, 0x64

    .line 4605
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_9

    .line 4606
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4607
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$22;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$22;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_2
    const-string v1, "com.oppo.process.meta.queue.limit"

    .line 4621
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 4623
    iget-object v2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v2, :cond_a

    .line 4626
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_a

    .line 4627
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v3

    .line 4628
    iget-object v2, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(I)V

    :cond_a
    const-string v1, "com.oppo.process.image.queue.limit"

    .line 4632
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4634
    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_b

    .line 4637
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_b

    .line 4638
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v3

    .line 4639
    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->b(I)V

    .line 4643
    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_c

    .line 4644
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_c
    return-void

    .line 4547
    :cond_d
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewCaptureResult, mOneCamera: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    const-string v0, "onPreviewSizeChanged"

    .line 2147
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->o(I)V

    const-string v1, "CameraManager"

    .line 2151
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;Z)V

    .line 2155
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$10;

    invoke-direct {v2, p0, p1}, Lcom/oppo/camera/e$10;-><init>(Lcom/oppo/camera/e;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 2172
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 5765
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    .line 5766
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/e;->e(IZ)V

    .line 5768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingControlBg, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needControllerAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 6

    .line 10804
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 10806
    iget-boolean v2, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/oppo/camera/e;->A:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 10807
    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    .line 10808
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_0

    .line 10809
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 10810
    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3066
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->o(Z)V

    .line 3068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/e;->am:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    if-eqz p1, :cond_1

    .line 3069
    iput v2, p0, Lcom/oppo/camera/e;->s:I

    .line 3070
    invoke-virtual {p1, v2}, Lcom/oppo/camera/e$p;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 9687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOpticalZoomMenu, listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9689
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    .line 9690
    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V
    .locals 1

    .line 4542
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/i;Lcom/oppo/camera/entry/b;Z)V
    .locals 2

    const-string v0, "CameraManager create instance"

    .line 1401
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1403
    iput-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    .line 1404
    iput-object p2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 1405
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->i()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->r(I)V

    .line 1407
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    instance-of p1, p1, Lcom/oppo/camera/MyApplication;

    if-eqz p1, :cond_0

    .line 1408
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/MyApplication;

    invoke-virtual {p1}, Lcom/oppo/camera/MyApplication;->d()V

    .line 1411
    :cond_0
    new-instance p1, Lcom/oppo/camera/e$l;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/e$l;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    .line 1413
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1414
    invoke-direct {p0}, Lcom/oppo/camera/e;->bC()V

    .line 1416
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1417
    invoke-direct {p0}, Lcom/oppo/camera/e;->bA()V

    .line 1420
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->bD()V

    :cond_2
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    .line 1424
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->l(I)V

    .line 1427
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/e;->aA()V

    const/4 p3, 0x2

    .line 1429
    invoke-direct {p0, p3}, Lcom/oppo/camera/e;->m(I)V

    .line 1431
    iget-object p3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p3}, Lcom/oppo/camera/entry/b;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1432
    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    .line 1435
    :cond_4
    iget-object p3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "rom_update_info"

    invoke-virtual {p3, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    .line 1437
    iget-object p3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "local_update_info"

    invoke-virtual {p3, v1, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->aW:Landroid/content/SharedPreferences;

    .line 1440
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1442
    invoke-static {p1}, Lcom/color/compat/os/PowerManagerNative;->getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/e;->k:I

    const-string p1, "oppo.camera.gallery.backlight.optimize"

    .line 1444
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ab:Z

    const-string p1, "oppo.autobrightctl.animation.support"

    .line 1445
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/e;->ac:Z

    .line 1446
    new-instance p1, Lcom/oppo/camera/e$n;

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/e$n;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object p1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    .line 1448
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/v$a;)V
    .locals 5

    .line 4059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storeImagePictureTakenDone, mJpegRotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oppo/camera/v$a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", jpegName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    .line 4067
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_1

    .line 4068
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCaptureMode:Ljava/lang/String;

    .line 4069
    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraId:Ljava/lang/String;

    .line 4070
    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->n:I

    iput v2, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mOrientation:I

    .line 4071
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2, v0, p1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iput-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 4072
    iget-object v0, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->report()V

    .line 4075
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/v$a;)V

    .line 4076
    invoke-virtual {p0}, Lcom/oppo/camera/e;->g()V

    const/4 v0, 0x0

    .line 4077
    iput v0, p0, Lcom/oppo/camera/e;->u:I

    .line 4078
    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iput v2, p1, Lcom/oppo/camera/v$a;->q:I

    .line 4080
    iget-object v2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->r()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 4081
    iget-object v2, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v2}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v2

    .line 4084
    iget-boolean v4, p0, Lcom/oppo/camera/e;->X:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 4088
    :cond_3
    :goto_0
    iput-object v2, p1, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    .line 4089
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->O()I

    move-result v2

    iput v2, p1, Lcom/oppo/camera/v$a;->s:I

    .line 4090
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oppo/camera/v$a;->j:Ljava/lang/String;

    .line 4091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/oppo/camera/v$a;->l:J

    .line 4092
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->K()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/oppo/camera/v$a;->z:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4095
    new-instance v0, Lcom/oppo/camera/e$19;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$19;-><init>(Lcom/oppo/camera/e;)V

    iput-object v0, p1, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    .line 4117
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->cx:Lcom/oppo/camera/Ipa/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/Ipa/c;->a(Lcom/oppo/camera/v$a;)V

    .line 4119
    sget p1, Lcom/oppo/camera/v;->s:I

    if-eqz p1, :cond_5

    return-void

    .line 4123
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    const-string p1, "storeImagePictureTakenDone X"

    .line 4125
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1719
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1724
    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->c()V

    const-string p1, "CameraManager"

    const-string v0, "notifyFirstFrame, sendBroadcast com.oppo.camera.start notifyFirstFrame"

    .line 1726
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 1729
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->b(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 6

    .line 2507
    iget-object v0, p0, Lcom/oppo/camera/e;->aR:Ljava/lang/Object;

    monitor-enter v0

    .line 2508
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/e;->ah:Z

    if-eqz v1, :cond_0

    const-string p1, "CameraManager"

    const-string p2, "setAutoBrightnessAdjust, Process would be kill, don\'t set adjustValue!"

    .line 2509
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    monitor-exit v0

    return-void

    .line 2513
    :cond_0
    iput-boolean p2, p0, Lcom/oppo/camera/e;->ah:Z

    .line 2516
    iget-boolean p2, p0, Lcom/oppo/camera/e;->ab:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 2517
    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_1

    .line 2523
    :cond_2
    iget-boolean p2, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz p2, :cond_4

    .line 2524
    invoke-direct {p0}, Lcom/oppo/camera/e;->aM()I

    move-result p2

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz p1, :cond_3

    const/high16 p1, 0x43960000    # 300.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x43fa0000    # 500.0f

    :goto_0
    int-to-float p2, p2

    mul-float/2addr p2, p1

    div-float p1, p2, v2

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    cmpl-float p2, p1, v1

    if-nez p2, :cond_5

    const-string p1, "CameraManager"

    const-string p2, "setAutoBrightnessAdjust, No need set adjustValue!"

    .line 2535
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    monitor-exit v0

    return-void

    :cond_5
    const-string p2, "CameraManager"

    .line 2540
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "setAutoBrightnessAdjust %f on sdk %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2541
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2540
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1b

    .line 2543
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_6

    .line 2544
    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    if-eqz p2, :cond_6

    .line 2547
    invoke-static {p2, p1}, Lcom/color/compat/hardware/display/DisplayManagerNative;->setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V

    .line 2550
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Landroid/hardware/camera2/params/Face;)V
    .locals 2

    .line 2085
    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    .line 2086
    :try_start_0
    iput-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    .line 2087
    iget-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e;->bl:[Landroid/hardware/camera2/params/Face;

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/oppo/camera/e;->bm:I

    .line 2089
    iget-object p1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2090
    iget-object p1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget v1, p0, Lcom/oppo/camera/e;->bm:I

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(I)V

    .line 2092
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0, p1}, Lcom/oppo/camera/o;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 3139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown, keycode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    iget v0, p0, Lcom/oppo/camera/e;->z:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 3142
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "fingerprint"

    .line 3143
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_d

    const/16 v0, 0x52

    if-eq p1, v0, :cond_c

    const/16 v0, 0x54

    if-eq p1, v0, :cond_b

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_d

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_7

    const/16 v0, 0x50

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3193
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3197
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3201
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/e;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 3155
    :cond_5
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 3156
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_6
    return v1

    .line 3170
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 3172
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    const-wide/16 v4, 0x258

    if-eqz p1, :cond_8

    .line 3173
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    iget-wide v6, p0, Lcom/oppo/camera/e;->A:J

    sub-long v6, v2, v6

    cmp-long p1, v6, v4

    if-gtz p1, :cond_8

    return v1

    .line 3178
    :cond_8
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_9

    .line 3179
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    iget-wide v6, p0, Lcom/oppo/camera/e;->A:J

    sub-long v6, v2, v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_9

    .line 3181
    invoke-virtual {p0}, Lcom/oppo/camera/e;->an()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3182
    iput-wide v2, p0, Lcom/oppo/camera/e;->A:J

    .line 3183
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_1

    .line 3184
    :cond_9
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 3185
    iput-wide v2, p0, Lcom/oppo/camera/e;->A:J

    :cond_a
    :goto_1
    return v1

    .line 3207
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    return p1

    :cond_c
    return v1

    .line 3165
    :cond_d
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->a(Landroid/view/KeyEvent;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 2185
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    .line 2872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p2}, Lcom/oppo/camera/d/i;->b(I)V

    .line 2875
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/d/i;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2878
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p2, :cond_0

    .line 2879
    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 2880
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    .line 2882
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2883
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->K(Z)V

    :cond_0
    return p1
.end method

.method public aa()V
    .locals 5

    .line 5192
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Z()V

    .line 5194
    new-instance v0, Lcom/oppo/camera/ui/preview/a/j;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/preview/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    .line 5195
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->cQ:Lcom/oppo/camera/ui/preview/a/i$a;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Lcom/oppo/camera/ui/preview/a/i$a;)V

    .line 5197
    new-instance v0, Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/ui/e;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 5198
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->m(I)V

    .line 5199
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/a;)V

    .line 5200
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    new-instance v1, Lcom/oppo/camera/e$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$o;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/d;)V

    .line 5201
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cX:Lcom/oppo/camera/ui/control/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/control/f;)V

    .line 5202
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->cK:Lcom/oppo/camera/e$t;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/preview/e$b;)V

    .line 5203
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/preview/a/i;)V

    .line 5205
    new-instance v0, Lcom/oppo/camera/ui/preview/h;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->cT:Lcom/oppo/camera/ui/preview/c;

    invoke-direct {v0, v1, v3, v4}, Lcom/oppo/camera/ui/preview/h;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/preview/c;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    .line 5206
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->a(I)V

    .line 5207
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->b()V

    .line 5209
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->cS:Lcom/oppo/camera/d/b;

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v4, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {v0, v1, v3, v4}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    .line 5211
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Y()V

    .line 5213
    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    .line 5214
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    .line 5215
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(Ljava/lang/String;)V

    .line 5216
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    .line 5217
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    .line 5218
    iget-object v0, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 5219
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(I)V

    .line 5221
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5222
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5223
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 5222
    invoke-static {v3}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    .line 5224
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->J(Z)V

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "onCreate, open the block"

    .line 5227
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.display.miravision.support"

    .line 5229
    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/e;->aq:Z

    .line 5231
    new-instance v0, Lcom/oppo/camera/m;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {v0, v1, v3}, Lcom/oppo/camera/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/i;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    .line 5232
    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m;->a(I)V

    .line 5233
    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    new-instance v1, Lcom/oppo/camera/e$w;

    invoke-direct {v1, p0, v2}, Lcom/oppo/camera/e$w;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m;->a(Lcom/oppo/camera/m$e;)V

    .line 5235
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    return-void
.end method

.method public ab()V
    .locals 1

    const/4 v0, 0x1

    .line 5239
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aC:Z

    return-void
.end method

.method public ac()V
    .locals 2

    .line 5243
    iget-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v0, :cond_0

    .line 5244
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$25;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$25;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public ad()V
    .locals 12

    const-string v0, "CameraManager"

    const-string v1, "onResumeMessage"

    .line 5374
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5376
    iget-boolean v1, p0, Lcom/oppo/camera/e;->ao:Z

    if-eqz v1, :cond_0

    const-string v1, "onResumeMessage, return"

    .line 5377
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5382
    iput-boolean v1, p0, Lcom/oppo/camera/e;->ao:Z

    const/4 v2, 0x0

    .line 5383
    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->z(Z)V

    .line 5384
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->j(Z)V

    .line 5385
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->i(Z)V

    .line 5386
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->f(Z)V

    .line 5387
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->k(Z)V

    const/4 v3, -0x1

    .line 5388
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->c(I)V

    .line 5389
    invoke-virtual {p0}, Lcom/oppo/camera/e;->A()V

    .line 5391
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_1

    .line 5392
    iget-boolean v5, p0, Lcom/oppo/camera/e;->U:Z

    xor-int/2addr v5, v1

    invoke-virtual {v4, v5, v2}, Lcom/oppo/camera/ui/e;->b(ZZ)V

    .line 5393
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->g(Z)V

    .line 5396
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v4, :cond_4

    .line 5397
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5398
    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5399
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/oppo/camera/x;->a(I)V

    .line 5403
    :cond_4
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v4, :cond_12

    .line 5404
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->w(Z)V

    .line 5405
    iget-object v4, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "pref_filter_process_key"

    .line 5406
    invoke-virtual {p0, v4}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v11, v1

    goto :goto_0

    :cond_5
    move v11, v2

    .line 5407
    :goto_0
    iget-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v6

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v7

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5408
    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v8

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v9

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->a()Z

    move-result v10

    .line 5407
    invoke-virtual/range {v5 .. v11}, Lcom/oppo/camera/ui/e;->a(ZZZZZZ)V

    .line 5411
    iget-object v4, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v4, :cond_6

    .line 5412
    invoke-virtual {v4}, Lcom/oppo/camera/ui/preview/h;->c()V

    .line 5415
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v4}, Lcom/oppo/camera/entry/b;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    if-eqz v4, :cond_7

    .line 5416
    iget-object v5, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v5, v4}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v4

    .line 5417
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v5, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v4

    .line 5418
    iget-object v5, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v5, v3, v4}, Lcom/oppo/camera/ui/e;->c(II)V

    .line 5421
    :cond_7
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5424
    sget-object v3, Lcom/oppo/camera/config/ConfigDataBase;->KEY_GOOGLE_LENS_ENABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v3

    .line 5428
    iget-object v4, p0, Lcom/oppo/camera/e;->aV:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_8

    const/4 v5, 0x0

    const-string v6, "google_lens_switch"

    .line 5429
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 5433
    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 5435
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 5440
    :cond_8
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResumeMessage, enableGoogleLens: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    .line 5442
    iget-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-nez v3, :cond_9

    .line 5443
    new-instance v3, Lcom/google/lens/sdk/LensApi;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    .line 5444
    iget-object v3, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    new-instance v4, Lcom/oppo/camera/e$26;

    invoke-direct {v4, p0}, Lcom/oppo/camera/e$26;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v3, v4}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 5465
    :cond_9
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "func_face_beauty_process"

    .line 5466
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 5467
    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5468
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "beauty"

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->e(Ljava/lang/String;)V

    .line 5470
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aM()I

    move-result v3

    .line 5471
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/d/i;->n(I)V

    .line 5472
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, v3}, Lcom/oppo/camera/ui/e;->k(I)V

    .line 5474
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5475
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->n(Z)V

    goto :goto_2

    .line 5477
    :cond_a
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aD()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 5478
    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 5479
    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->aG()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5480
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->a()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5481
    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5482
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/ui/e;->s(Z)V

    .line 5485
    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    if-ne v3, v1, :cond_e

    iget-boolean v1, p0, Lcom/oppo/camera/e;->ca:Z

    if-eqz v1, :cond_e

    .line 5486
    invoke-direct {p0}, Lcom/oppo/camera/e;->az()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_d

    .line 5487
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->r(I)V

    goto :goto_3

    .line 5489
    :cond_d
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->q(I)V

    .line 5493
    :cond_e
    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5494
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->h(Z)V

    .line 5497
    :cond_f
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_portrait_new_style_menu"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5498
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    const-string v1, "pref_filter_menu"

    .line 5499
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5500
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    const-string v1, "pref_video_filter_menu"

    .line 5501
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5502
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/ui/e;->f(Ljava/lang/String;)V

    .line 5507
    :cond_12
    :goto_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz v1, :cond_13

    .line 5508
    invoke-virtual {v1}, Lcom/oppo/camera/m;->d()V

    .line 5511
    :cond_13
    iget-object v1, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    invoke-static {v1}, Lcom/oppo/camera/ui/menu/f;->a(Lcom/oppo/camera/ui/menu/e;)V

    .line 5512
    iget-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v1}, Lcom/oppo/camera/f;->d()V

    .line 5514
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5515
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 5516
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v2, v3, v1}, Lcom/oppo/camera/ui/e;->b(ILjava/lang/String;)V

    .line 5519
    :cond_14
    iget-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-nez v1, :cond_15

    .line 5520
    new-instance v1, Lcom/oppo/camera/w;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oppo/camera/w;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    .line 5523
    :cond_15
    iget-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    invoke-virtual {v1}, Lcom/oppo/camera/w;->a()V

    const-string v1, "onResumeMessage, end"

    .line 5525
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ae()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onDestroy"

    .line 5619
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5621
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/h;->d()V

    .line 5623
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    if-eqz v0, :cond_0

    .line 5624
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->a()V

    .line 5625
    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    .line 5628
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5629
    invoke-virtual {v0}, Lcom/oppo/camera/m;->f()V

    .line 5630
    iput-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    .line 5633
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_2

    .line 5634
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->g()V

    .line 5635
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->b()V

    .line 5636
    iput-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    .line 5639
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_3

    .line 5640
    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->V()V

    .line 5641
    iput-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5644
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_4

    .line 5645
    invoke-virtual {v0}, Lcom/oppo/camera/o;->e()V

    .line 5646
    iput-object v1, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    .line 5649
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_5

    .line 5650
    invoke-virtual {v0}, Lcom/oppo/camera/k;->d()V

    .line 5651
    iput-object v1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    .line 5654
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_6

    .line 5655
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->G()V

    .line 5656
    iput-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 5659
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_7

    .line 5660
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->e()V

    .line 5661
    iput-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    .line 5664
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz v0, :cond_8

    .line 5665
    invoke-virtual {v0}, Lcom/oppo/camera/n;->c()V

    .line 5666
    iput-object v1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    .line 5669
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    if-eqz v0, :cond_9

    .line 5670
    invoke-virtual {v0}, Lcom/oppo/camera/s;->a()V

    .line 5671
    iput-object v1, p0, Lcom/oppo/camera/e;->bV:Lcom/oppo/camera/s;

    .line 5674
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    if-eqz v0, :cond_a

    .line 5675
    invoke-virtual {v0}, Lcom/oppo/camera/w;->b()V

    .line 5676
    iput-object v1, p0, Lcom/oppo/camera/e;->bJ:Lcom/oppo/camera/w;

    .line 5679
    :cond_a
    invoke-direct {p0}, Lcom/oppo/camera/e;->aD()V

    .line 5681
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_b

    .line 5682
    invoke-virtual {v0}, Lcom/oppo/camera/t;->c()V

    .line 5683
    iput-object v1, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    .line 5686
    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    if-eqz v0, :cond_c

    .line 5687
    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/e;->a(Lcom/oppo/camera/Ipa/e$b;)V

    .line 5688
    iget-object v0, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/e;->a()V

    .line 5689
    iput-object v1, p0, Lcom/oppo/camera/e;->bA:Lcom/oppo/camera/Ipa/e;

    :cond_c
    const/4 v0, 0x0

    .line 5692
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    .line 5693
    iput-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 5694
    iput-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    .line 5695
    iput-object v1, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-void
.end method

.method public af()V
    .locals 4

    .line 5737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchUIByCurrentModeType, getCurrentModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    .line 5740
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    .line 5741
    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v3

    .line 5740
    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/control/c;Z)V

    return-void
.end method

.method public ag()Z
    .locals 1

    .line 5872
    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    return v0
.end method

.method public ah()V
    .locals 3

    .line 5930
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    .line 5932
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 5933
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->h()V

    .line 5934
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/e/f;->a(ZLcom/oppo/camera/e/f$b;)V

    .line 5937
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    .line 5938
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/e;->O:Z

    .line 5939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5941
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    .line 5942
    iput-boolean v1, p0, Lcom/oppo/camera/e;->ax:Z

    return-void

    :catchall_0
    move-exception v1

    .line 5939
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ai()V
    .locals 4

    .line 5946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterStartUpCamera, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstTimeInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5948
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    .line 5952
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aS:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 5953
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->b(I)V

    .line 5954
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    .line 5955
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    .line 5956
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/h;->a(Z)V

    .line 5957
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->l(I)V

    .line 5960
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->r(Z)V

    .line 5961
    invoke-virtual {p0, v3, v3}, Lcom/oppo/camera/e;->b(ZZ)V

    .line 5963
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_1

    const-string v0, "afterStartUpCamera, activity paused, so return"

    .line 5964
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5969
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "key_beauty3d"

    .line 5970
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5971
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/e$30;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$30;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5979
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aj()V

    .line 5980
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->v(Z)V

    .line 5982
    iget-boolean v0, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v0, :cond_3

    .line 5983
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$31;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$31;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public aj()V
    .locals 2

    .line 6983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCaptureSession, mCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbAEAFLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6986
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 6990
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->j(I)V

    .line 6991
    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->d()V

    .line 6992
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 6994
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->q()V

    .line 6995
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->u()V

    const/4 v0, 0x0

    .line 6996
    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    .line 6998
    iget-boolean v0, p0, Lcom/oppo/camera/e;->Q:Z

    if-eqz v0, :cond_1

    .line 6999
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$33;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$33;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ak()Z
    .locals 1

    .line 8704
    iget-object v0, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v0, :cond_0

    .line 8705
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/h;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public al()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "showOpticalZoomMenu"

    .line 9695
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9697
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 9698
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 9699
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9703
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_1

    .line 9704
    invoke-virtual {v0}, Lcom/oppo/camera/x;->b()V

    :cond_1
    return-void
.end method

.method public am()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "collapseOpticalZoomMenu"

    .line 9709
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9711
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    .line 9712
    invoke-virtual {v0}, Lcom/oppo/camera/x;->c()V

    :cond_0
    return-void
.end method

.method public an()Z
    .locals 5

    .line 10751
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 10755
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v0

    .line 10757
    iget-object v2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->M()Lcom/oppo/camera/ui/control/ShutterButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/ShutterButton;->getVisibility()I

    move-result v2

    const-string v3, "CameraManager"

    if-nez v2, :cond_3

    .line 10758
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10759
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10760
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sticker"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10768
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVolumeCanCapture, getCurrentModeName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10770
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "common"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 10762
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVolumeCanCapture, will return, isClickable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isClickable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", enable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10763
    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/ShutterButton;->isEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", recording: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->aq()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10762
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public ao()Z
    .locals 1

    .line 10786
    invoke-direct {p0}, Lcom/oppo/camera/e;->br()Lcom/oppo/camera/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10787
    iget-object v0, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    invoke-virtual {v0}, Lcom/oppo/camera/u;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ap()V
    .locals 1

    .line 11059
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 11060
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ar()V

    :cond_0
    return-void
.end method

.method public aq()Z
    .locals 1

    .line 11605
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    return v0
.end method

.method public ar()V
    .locals 1

    .line 11609
    iget-object v0, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz v0, :cond_0

    .line 11610
    invoke-virtual {v0}, Lcom/oppo/camera/m;->g()V

    :cond_0
    return-void
.end method

.method public as()J
    .locals 2

    .line 11915
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ay()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public at()Lcom/oppo/camera/e$c;
    .locals 1

    .line 12012
    iget-object v0, p0, Lcom/oppo/camera/e;->bH:Lcom/oppo/camera/e$c;

    return-object v0
.end method

.method public au()F
    .locals 1

    .line 12043
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    .line 12044
    invoke-virtual {v0}, Lcom/oppo/camera/x;->a()F

    move-result v0

    return v0

    .line 12047
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aw()F

    move-result v0

    return v0
.end method

.method public av()Z
    .locals 1

    .line 12051
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    .line 12052
    invoke-virtual {v0}, Lcom/oppo/camera/x;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aw()F
    .locals 3

    .line 12063
    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    const-string v1, "func_sat_camera"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "pref_switch_camera_key"

    .line 12064
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v2

    .line 12063
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e/h;->a(ZZ)F

    move-result v0

    return v0
.end method

.method public ax()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 12072
    invoke-direct {p0}, Lcom/oppo/camera/e;->bz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12074
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "func_sat_camera"

    .line 12075
    invoke-virtual {v2, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_switch_camera_key"

    .line 12076
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    .line 12074
    invoke-virtual {v1, v0, v2, v3}, Lcom/oppo/camera/e/h;->a(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ay()Z
    .locals 1

    .line 12829
    invoke-virtual {p0}, Lcom/oppo/camera/e;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onScreenOffWhenLocked"

    .line 1464
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    .line 1468
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->m(Z)V

    const/4 v0, 0x1

    .line 1469
    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/e;->a(ZZ)V

    .line 1471
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->i(Z)V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/e$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$6;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    .line 5564
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/e;->a(FZ)V

    .line 5566
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$27;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e$27;-><init>(Lcom/oppo/camera/e;F)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSound, cameraSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->aJ:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/oppo/camera/e;->bp:Lcom/oppo/camera/o;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/o;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3132
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    .line 3135
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bB:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1734
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    const-string v1, "CameraManager"

    if-eqz v0, :cond_0

    .line 1735
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewOk, mbPaused: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1740
    iget-boolean p1, p0, Lcom/oppo/camera/e;->ap:Z

    if-nez p1, :cond_2

    .line 1741
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    .line 1743
    iget-boolean p1, p0, Lcom/oppo/camera/e;->an:Z

    if-nez p1, :cond_1

    .line 1744
    invoke-virtual {p0}, Lcom/oppo/camera/e;->j()V

    :cond_1
    const-string p1, "CameraTest Displayed com.oppo.camera"

    .line 1747
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1752
    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/e;->an:Z

    if-nez p1, :cond_3

    .line 1753
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->u(Z)V

    .line 1755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewOk, mbDisplayOnLock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {p1}, Lcom/oppo/camera/f;->d()V

    .line 1758
    invoke-virtual {p0}, Lcom/oppo/camera/e;->j()V

    :cond_3
    return-void
.end method

.method public b(ZZ)V
    .locals 4

    .line 4660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAEAFLocked, mbAEAFLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "setAEAFLocked, isCapturing, so return!"

    .line 4663
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "setAEAFLocked"

    .line 4668
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 4670
    iput-boolean p1, p0, Lcom/oppo/camera/e;->Q:Z

    .line 4672
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_3

    .line 4673
    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4674
    iput-boolean v1, p0, Lcom/oppo/camera/e;->R:Z

    .line 4675
    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->ao()V

    const-string p1, "pref_camera_flashmode_key"

    .line 4677
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4678
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    .line 4679
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4678
    invoke-virtual {v1, p1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 4681
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4682
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v1

    const-string v2, "off"

    .line 4683
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4684
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4686
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1, p1}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 4690
    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->B(Z)V

    .line 4693
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_3

    .line 4694
    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/h;->e(Z)V

    .line 4698
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_4

    .line 4699
    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    if-eqz p2, :cond_4

    .line 4702
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 4706
    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 3217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyUp, keyCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraManager"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oppo.camera.stresstest"

    const-string v0, "false"

    .line 3219
    invoke-static {p2, v0}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 3220
    invoke-virtual {p0}, Lcom/oppo/camera/e;->F()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/16 v0, 0x18

    const/4 v3, 0x3

    if-eq p1, v0, :cond_6

    const/16 v0, 0x19

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x50

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/16 v0, 0x83

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13f

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_a

    const-string p1, "night"

    .line 3342
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    :pswitch_1
    if-eqz p2, :cond_a

    .line 3334
    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_2
    if-eqz p2, :cond_a

    .line 3326
    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v3}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_3
    if-eqz p2, :cond_a

    const-string p1, "portrait"

    .line 3318
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    .line 3310
    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_1

    .line 3311
    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->b(Z)Z

    :cond_1
    return v2

    :pswitch_5
    if-eqz p2, :cond_a

    .line 3301
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3302
    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_6
    if-eqz p2, :cond_a

    .line 3294
    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_7
    if-eqz p2, :cond_a

    .line 3286
    iget-object p1, p0, Lcom/oppo/camera/e;->cU:Lcom/oppo/camera/ui/d;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->d(I)V

    return v2

    :pswitch_8
    if-eqz p2, :cond_a

    return v2

    :pswitch_9
    if-eqz p2, :cond_a

    const-string p1, "commonVideo"

    .line 3271
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return v2

    :cond_2
    if-eqz p2, :cond_a

    const-string p1, "common"

    .line 3263
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    :cond_3
    return v2

    .line 3230
    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_5

    .line 3231
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    :cond_5
    return v2

    .line 3240
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne p1, v3, :cond_7

    return v2

    .line 3244
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    .line 3248
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    .line 3252
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v0, 0x7f0f01bf

    .line 3253
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_volume_key_function_key"

    .line 3252
    invoke-virtual {p1, v0, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shutter"

    .line 3255
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "zoom"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    :goto_1
    return v1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .line 2844
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v0

    .line 2845
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v1

    .line 2846
    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v1

    .line 2847
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/d/a;)Landroid/util/Size;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2852
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2856
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    .line 2859
    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v5, :cond_2

    .line 2860
    invoke-virtual {v5, v1, v0}, Lcom/oppo/camera/q;->a(Landroid/util/Size;Landroid/util/Size;)V

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 2864
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isModeSwitchNeedBlurAnimate, previewSize:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") => ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 2864
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public c(F)Landroid/graphics/Rect;
    .locals 6

    .line 12016
    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 12017
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12019
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 12020
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 12021
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p1, v5

    div-float/2addr v4, p1

    float-to-int v4, v4

    .line 12022
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    sub-int v0, v2, v4

    sub-int v5, v3, p1

    add-int/2addr v2, v4

    add-int/2addr v3, p1

    .line 12023
    invoke-virtual {v1, v0, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1
.end method

.method public c(I)V
    .locals 2

    .line 2306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurAnimType, animType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    iput p1, p0, Lcom/oppo/camera/e;->x:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 5529
    iget-object v0, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraTriggerShutterType, shutterTriggerType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5532
    iput-object p1, p0, Lcom/oppo/camera/e;->aM:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterStartPreview, mbFrameAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->ap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromAsync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->D(Z)V

    .line 1813
    invoke-direct {p0}, Lcom/oppo/camera/e;->bc()V

    .line 1815
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz p1, :cond_0

    return-void

    .line 1819
    :cond_0
    iget p1, p0, Lcom/oppo/camera/e;->w:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 1820
    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 1821
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/e;->c(F)V

    .line 1824
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {p1}, Lcom/oppo/camera/e$n;->c()V

    .line 1826
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_sticker_process_key"

    invoke-virtual {p1, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1827
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object p1

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/SharedPreferences;)Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->bO:Lcom/oppo/camera/sticker/data/StickerItem;

    .line 1830
    :cond_3
    iget-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p1, :cond_4

    .line 1831
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(Z)V

    .line 1832
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->o(Z)V

    .line 1833
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    .line 1836
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/e;->aF()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1837
    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    .line 1838
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1839
    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v1, p1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(ZZ)V

    :cond_5
    return-void
.end method

.method public c(ZZ)V
    .locals 6

    const-string v0, "CameraManager"

    const-string v1, "onResume"

    .line 5254
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5256
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->k()V

    const-string v1, "normal"

    .line 5257
    iput-object v1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5259
    iput-boolean v1, p0, Lcom/oppo/camera/e;->cg:Z

    const/4 v2, 0x0

    .line 5260
    iput-boolean v2, p0, Lcom/oppo/camera/e;->ci:Z

    .line 5262
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->r()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 5263
    invoke-direct {p0}, Lcom/oppo/camera/e;->bK()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oppo/camera/e;->cg:Z

    .line 5265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, mbAllowObtainExifLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->cg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5268
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5269
    invoke-direct {p0}, Lcom/oppo/camera/e;->bC()V

    .line 5270
    invoke-direct {p0}, Lcom/oppo/camera/e;->bF()V

    .line 5271
    invoke-direct {p0}, Lcom/oppo/camera/e;->bA()V

    .line 5272
    invoke-direct {p0}, Lcom/oppo/camera/e;->bD()V

    .line 5277
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5278
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5282
    :goto_0
    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->r(I)V

    goto :goto_1

    .line 5283
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5284
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->i()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 5286
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->r(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 5290
    :goto_1
    iput v2, p0, Lcom/oppo/camera/e;->bY:I

    .line 5291
    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v3}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v3

    .line 5292
    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5293
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v3, 0x0

    .line 5294
    iput-wide v3, p0, Lcom/oppo/camera/e;->A:J

    .line 5295
    iput-boolean v2, p0, Lcom/oppo/camera/e;->ar:Z

    .line 5297
    iget-boolean v3, p0, Lcom/oppo/camera/e;->ax:Z

    if-nez v3, :cond_5

    .line 5298
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->ad()V

    .line 5301
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v3}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    .line 5302
    :cond_6
    invoke-direct {p0}, Lcom/oppo/camera/e;->bB()V

    .line 5305
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p0, v0, v3}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    const/4 v0, 0x3

    .line 5307
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->m(I)V

    .line 5309
    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->t(Z)V

    .line 5310
    iget-boolean p2, p0, Lcom/oppo/camera/e;->P:Z

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/oppo/camera/e;->u(Z)V

    .line 5312
    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 5313
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/e;->y:I

    .line 5315
    invoke-direct {p0}, Lcom/oppo/camera/e;->aB()V

    .line 5316
    invoke-static {}, Landroid/hardware/foss/FossManager;->getInstance()Landroid/hardware/foss/FossManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    .line 5318
    iget-object p2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    if-eqz p2, :cond_8

    .line 5319
    invoke-virtual {p2}, Landroid/hardware/foss/FossManager;->disableFoss()Z

    .line 5324
    :cond_8
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 5325
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 5326
    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    .line 5325
    invoke-static {v1}, Lcom/oppo/camera/ui/menu/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/e;->j(Ljava/lang/String;)V

    .line 5327
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->J(Z)V

    .line 5328
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    .line 5329
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 5331
    :cond_9
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->K(Z)V

    .line 5332
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object p2

    .line 5335
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_support_switch_camera"

    .line 5336
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v3

    .line 5335
    invoke-virtual {v0, v1, p2, v3}, Lcom/oppo/camera/ui/e;->a(ILjava/lang/String;Z)V

    .line 5337
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->l()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/oppo/camera/d/i;->d(Z)V

    .line 5339
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 5340
    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/e;->r(Z)V

    .line 5343
    :cond_a
    iget-boolean p2, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz p2, :cond_b

    .line 5344
    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->bd()V

    .line 5347
    :cond_b
    iput-boolean v2, p0, Lcom/oppo/camera/e;->as:Z

    .line 5348
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->y(Z)V

    .line 5349
    iput-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    .line 5351
    iget-boolean p2, p0, Lcom/oppo/camera/e;->ax:Z

    if-nez p2, :cond_d

    .line 5352
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p2

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    return-void

    .line 5356
    :cond_c
    invoke-direct {p0}, Lcom/oppo/camera/e;->ba()V

    .line 5357
    iput-boolean v2, p0, Lcom/oppo/camera/e;->cf:Z

    .line 5358
    invoke-virtual {p0, v2}, Lcom/oppo/camera/e;->l(I)V

    .line 5359
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ad()V

    .line 5362
    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-eqz p1, :cond_e

    .line 5364
    :try_start_0
    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5366
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5370
    :cond_e
    :goto_3
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/oppo/camera/e;->bx:Lcom/oppo/camera/t;

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Lcom/oppo/camera/t;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 10852
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 10853
    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v4, 0x7f0f01bf

    .line 10854
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_volume_key_function_key"

    .line 10853
    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10856
    iget-boolean v3, p0, Lcom/oppo/camera/e;->av:Z

    const-wide/16 v4, 0x258

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 10857
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-wide v7, p0, Lcom/oppo/camera/e;->A:J

    sub-long v7, v0, v7

    cmp-long v3, v7, v4

    if-gtz v3, :cond_0

    return v6

    :cond_0
    const-string v3, "shutter"

    .line 10862
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10863
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_1

    .line 10864
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/oppo/camera/e;->A:J

    sub-long v2, v0, v2

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 10866
    invoke-virtual {p0}, Lcom/oppo/camera/e;->an()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10867
    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    const-string p1, "volume"

    .line 10868
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->c(Ljava/lang/String;)V

    .line 10869
    iput-object p1, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    .line 10870
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ap()V

    goto :goto_0

    .line 10871
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/e;->av:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 10872
    iput-wide v0, p0, Lcom/oppo/camera/e;->A:J

    :cond_2
    :goto_0
    return v6

    :cond_3
    const-string p2, "zoom"

    .line 10876
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 10877
    iget-boolean p2, p0, Lcom/oppo/camera/e;->T:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/oppo/camera/e;->au:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 10879
    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->az()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 10880
    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->K()Z

    move-result p2

    if-nez p2, :cond_6

    .line 10881
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/oppo/camera/e;->U:Z

    if-nez p2, :cond_6

    .line 10883
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_zoom_key"

    .line 10884
    invoke-virtual {p2, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 10885
    invoke-virtual {p2}, Lcom/oppo/camera/d/i;->L()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    .line 10886
    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->V()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p2, 0x18

    if-ne p1, p2, :cond_5

    .line 10891
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_6

    .line 10892
    invoke-virtual {p1, v6}, Lcom/oppo/camera/x;->b(Z)V

    goto :goto_1

    .line 10895
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_6

    .line 10896
    invoke-virtual {p1, v0}, Lcom/oppo/camera/x;->b(Z)V

    :cond_6
    :goto_1
    return v6

    :cond_7
    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3358
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->d(Landroid/view/MotionEvent;)V

    .line 3361
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e;->P()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    .line 3362
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3363
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "CameraManager"

    const-string v0, "dispatchTouchEvent, do mFocus manager touchevent"

    .line 3364
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3369
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3373
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3377
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 3381
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    if-nez v0, :cond_5

    .line 3382
    new-instance v0, Lcom/oppo/camera/e$p;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/e$p;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    .line 3383
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    .line 3386
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3387
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 3388
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_7

    .line 3389
    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Landroid/view/MotionEvent;)Z

    .line 3392
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3393
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_b

    .line 3394
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3398
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->X()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3399
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    if-nez v0, :cond_a

    .line 3400
    new-instance v0, Lcom/oppo/camera/e$p;

    invoke-direct {v0, p0, v2}, Lcom/oppo/camera/e$p;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    .line 3401
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/e;->bS:Lcom/oppo/camera/e$p;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    .line 3404
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e;->bC:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .locals 2

    .line 3793
    iput p1, p0, Lcom/oppo/camera/e;->n:I

    .line 3795
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    .line 3796
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(I)V

    .line 3799
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    .line 3800
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->o(I)V

    .line 3803
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_2

    .line 3804
    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->e(I)V

    .line 3807
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_3

    .line 3808
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->b(I)V

    .line 3811
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_4

    .line 3812
    iget v0, p0, Lcom/oppo/camera/e;->n:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/x;->a(IZ)V

    .line 3815
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    .line 3816
    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 3817
    invoke-virtual {p0}, Lcom/oppo/camera/e;->Q()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3818
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    iget v1, p0, Lcom/oppo/camera/e;->n:I

    invoke-static {v0, v1}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(I)V

    .line 3819
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_5
    return-void
.end method

.method public d(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v1, 0x7f0f0191

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    .line 1872
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->at()V

    .line 1875
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-nez p1, :cond_1

    .line 1876
    new-instance p1, Lcom/oppo/camera/k;

    invoke-direct {p1}, Lcom/oppo/camera/k;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    .line 1879
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v0, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    .line 1881
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1882
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 1881
    invoke-virtual {v0, v1, v2, p1}, Lcom/oppo/camera/k;->a(Landroid/content/Context;II)V

    .line 1883
    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    iget-object v0, p0, Lcom/oppo/camera/e;->cF:Lcom/oppo/camera/k$c;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/k;->a(Lcom/oppo/camera/k$c;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1568
    iget-object v0, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0}, Lcom/oppo/camera/e$h;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(F)Z
    .locals 1

    const-string v0, "func_sat_camera"

    .line 12059
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 8

    .line 10815
    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->b()Ljava/lang/String;

    move-result-object v0

    .line 10817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToSwitchMode, lastModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10819
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "checkToSwitchMode"

    .line 10823
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 10825
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v3

    .line 10826
    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/a;->f(I)V

    .line 10827
    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->a()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/oppo/camera/d/a;->e(Z)V

    .line 10829
    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10830
    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->c()V

    const-string v4, "checkToSwitchMode, CloseSessionTask execute"

    .line 10832
    invoke-static {v2, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10834
    new-instance v2, Lcom/oppo/camera/e$i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/oppo/camera/e$i;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v2, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    .line 10835
    iget-object v2, p0, Lcom/oppo/camera/e;->cr:Lcom/oppo/camera/e$i;

    iget-object v4, p0, Lcom/oppo/camera/e;->j:Ljava/util/concurrent/ExecutorService;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v7}, Lcom/oppo/camera/d/i;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v7}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v4, v6}, Lcom/oppo/camera/e$i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10838
    :cond_2
    iput-boolean v5, p0, Lcom/oppo/camera/e;->aC:Z

    .line 10839
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->j(I)V

    .line 10840
    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    const-string v4, "pref_camera_mode_key"

    .line 10841
    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10842
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10843
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v3}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    .line 10844
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 10846
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v5

    :cond_3
    :goto_1
    return v1
.end method

.method public e()V
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->l()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 3824
    iput p1, p0, Lcom/oppo/camera/e;->o:I

    .line 3826
    iget-object v0, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    .line 3827
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->f(I)V

    :cond_0
    const-string v0, "pref_camera_gradienter_key"

    .line 3830
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    const-string v2, "off"

    .line 3831
    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3832
    invoke-virtual {p0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v2, :cond_1

    .line 3836
    invoke-virtual {v1}, Lcom/oppo/camera/x;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 3837
    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v2

    .line 3836
    invoke-virtual {v0, p1, v1, v2}, Lcom/oppo/camera/ui/e;->a(IZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoubleFinger, mbDoubleFinger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->am:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    iput-boolean p1, p0, Lcom/oppo/camera/e;->am:Z

    return-void
.end method

.method public f()I
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 1625
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    return v0

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->H()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 6

    .line 3916
    iget-object v1, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    const-string v2, "temperature_limit"

    const-string v3, "temperature_limit"

    const-string v4, "ro.camera.temperature.limit"

    const-string v5, "480"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    .line 3920
    iget-object v0, p0, Lcom/oppo/camera/e;->aP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemperatureChanged, level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sbHightTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oppo/camera/Camera;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", temperatureLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3925
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3926
    invoke-direct {p0}, Lcom/oppo/camera/e;->aV()V

    .line 3929
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_1

    const-string v2, "pref_support_high_temperature_ultimate_limit"

    .line 3931
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3932
    invoke-direct {p0}, Lcom/oppo/camera/e;->aW()V

    :cond_1
    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    .line 3936
    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 3937
    sput-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    .line 3938
    iput-boolean p1, p0, Lcom/oppo/camera/e;->N:Z

    .line 3940
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    const v0, 0x7f0f00e1

    .line 3941
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(I)V

    .line 3942
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3950
    :cond_3
    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 3951
    sput-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    .line 3952
    iput-boolean p1, p0, Lcom/oppo/camera/e;->N:Z

    .line 3955
    :try_start_0
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_5

    .line 3956
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3957
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const-string v0, "off"

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 3958
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 3961
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/e;->aG()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3964
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureModeChangeState, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    iput-boolean p1, p0, Lcom/oppo/camera/e;->U:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1643
    iput-object v0, p0, Lcom/oppo/camera/e;->t:[I

    return-void
.end method

.method public g(I)V
    .locals 9

    .line 3970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryChanged, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sbLowBatteryState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-le p1, v3, :cond_0

    .line 3974
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->g(Z)V

    .line 3975
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v3, 0x7f0f00f4

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->b(I)V

    goto :goto_0

    .line 3977
    :cond_0
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->g(Z)V

    .line 3979
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3980
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->f(Z)V

    .line 3981
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v4, 0x7f0f00f4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    :cond_1
    :goto_0
    const/16 v0, 0xf

    const/4 v3, 0x0

    if-le p1, v0, :cond_3

    .line 3988
    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz p1, :cond_2

    .line 3989
    sput-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    .line 3990
    iput-boolean v1, p0, Lcom/oppo/camera/e;->M:Z

    .line 3992
    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_2

    const v0, 0x7f0f00f3

    .line 3993
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->b(I)V

    .line 3994
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p1, v0, v3}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3995
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {p1, v0, v3}, Lcom/oppo/camera/ui/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 4002
    :cond_3
    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-nez p1, :cond_7

    .line 4003
    sput-boolean v2, Lcom/oppo/camera/Camera;->a:Z

    .line 4004
    iput-boolean v2, p0, Lcom/oppo/camera/e;->M:Z

    .line 4007
    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/oppo/camera/e;->P:Z

    if-nez p1, :cond_7

    .line 4008
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    if-eqz p1, :cond_7

    .line 4009
    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "off"

    if-nez p1, :cond_5

    .line 4010
    :try_start_1
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_4

    .line 4011
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 4012
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_1

    .line 4014
    :cond_4
    iput-boolean v2, p0, Lcom/oppo/camera/e;->aA:Z

    goto :goto_1

    :cond_5
    const-string p1, "func_torch_soft_light"

    .line 4016
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 4017
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->L()Z

    move-result p1

    if-nez p1, :cond_6

    .line 4018
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 4019
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 4023
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/e;->aH()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4027
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchingCameraState, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    iput-boolean p1, p0, Lcom/oppo/camera/e;->T:Z

    return-void
.end method

.method public h()V
    .locals 5

    .line 1655
    iget-boolean v0, p0, Lcom/oppo/camera/e;->av:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1662
    :cond_0
    new-instance v0, Lcom/oppo/camera/e$y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$y;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    .line 1664
    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$8;-><init>(Lcom/oppo/camera/e;)V

    const-string v2, "initBaseModeMap"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 1672
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->o(I)V

    .line 1673
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    .line 1674
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/oppo/camera/ui/e;->a(IZZ)V

    const/4 v0, 0x0

    .line 1675
    iput-boolean v0, p0, Lcom/oppo/camera/e;->L:Z

    .line 1676
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    .line 1677
    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    .line 1678
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    .line 1680
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1681
    invoke-virtual {p0}, Lcom/oppo/camera/e;->I()V

    .line 1684
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/camera/e;->au:Z

    .line 1685
    iput-boolean v4, p0, Lcom/oppo/camera/e;->av:Z

    return-void

    .line 1656
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeFirstTime, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbFirstTimeInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .locals 2

    .line 4368
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 4369
    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;I)Z

    .line 4371
    iget-object p1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string v1, "pref_camera_mode_key"

    .line 4372
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4373
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayToDisableBustShot, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->al:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iput-boolean p1, p0, Lcom/oppo/camera/e;->al:Z

    return-void
.end method

.method public i()V
    .locals 6

    .line 1689
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeSecondTime, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 1696
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->o(I)V

    .line 1697
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/content/Context;)V

    .line 1698
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;)V

    .line 1699
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->e(ZZ)V

    .line 1700
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    .line 1701
    iget-object v3, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    iget-object v5, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v5}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v5

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0}, Lcom/oppo/camera/ui/e;->a(IZZ)V

    .line 1702
    iput-boolean v1, p0, Lcom/oppo/camera/e;->L:Z

    .line 1703
    invoke-direct {p0}, Lcom/oppo/camera/e;->aL()V

    .line 1704
    invoke-direct {p0}, Lcom/oppo/camera/e;->bq()V

    .line 1705
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/j/b;->d()V

    .line 1707
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1708
    invoke-virtual {p0}, Lcom/oppo/camera/e;->I()V

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v1, "pref_filter_process_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    .line 1715
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/e;->au:Z

    return-void
.end method

.method public i(I)V
    .locals 10

    .line 4377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchCamera, cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4379
    iput-object v0, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    .line 4381
    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_0

    return-void

    .line 4385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOperation, cameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.camera.switch"

    const-string v2, "1"

    .line 4387
    invoke-static {v0, v2}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4389
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->b()I

    move-result v0

    .line 4390
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v2

    .line 4391
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v3

    .line 4392
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4, p1, v3}, Lcom/oppo/camera/ui/e;->b(ILjava/lang/String;)V

    .line 4394
    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    .line 4395
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->b(I)V

    .line 4396
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->h(I)V

    .line 4399
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->x()V

    const/4 v3, 0x0

    .line 4401
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->p(Z)V

    .line 4402
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->aa()V

    .line 4403
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->aI()V

    .line 4404
    iget-object v4, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v4}, Lcom/oppo/camera/ui/e;->D()V

    .line 4406
    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v5, Lcom/oppo/camera/e$21;

    invoke-direct {v5, p0}, Lcom/oppo/camera/e$21;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 4413
    invoke-direct {p0, p1}, Lcom/oppo/camera/e;->r(I)V

    .line 4414
    iget-object v4, p0, Lcom/oppo/camera/e;->br:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v4, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(I)V

    .line 4415
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v4, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3, v4}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/e;->l(I)V

    .line 4416
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v3}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    .line 4418
    invoke-direct {p0}, Lcom/oppo/camera/e;->aY()Ljava/lang/String;

    move-result-object p1

    .line 4419
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3, p1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object p1

    iget v3, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {p1, v3}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v6

    .line 4421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera, properCameraId: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    iget-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz p1, :cond_1

    .line 4424
    invoke-virtual {p1, v6}, Lcom/oppo/camera/e$l;->a(I)V

    :cond_1
    const/16 p1, 0x300

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    .line 4428
    iget-object p1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->i(Z)V

    .line 4431
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v6}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    .line 4433
    iput v1, p0, Lcom/oppo/camera/e;->w:I

    .line 4434
    iget-object v4, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v7, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    const/4 v8, 0x1

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/oppo/camera/e/f;->a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSizeChangeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->V:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iput-boolean p1, p0, Lcom/oppo/camera/e;->V:Z

    return-void
.end method

.method public j()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "onPreviewOKMessage"

    .line 1763
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-boolean v1, p0, Lcom/oppo/camera/e;->an:Z

    if-eqz v1, :cond_0

    const-string v1, "onPreviewOKMessage, mbPreviewOKMessageEnd is true, so return"

    .line 1766
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1771
    iput-boolean v1, p0, Lcom/oppo/camera/e;->an:Z

    .line 1773
    invoke-direct {p0}, Lcom/oppo/camera/e;->aE()V

    .line 1774
    invoke-direct {p0, v1}, Lcom/oppo/camera/e;->m(I)V

    .line 1775
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ad()V

    .line 1777
    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v1}, Lcom/oppo/camera/m;->d()V

    .line 1779
    iget-object v1, p0, Lcom/oppo/camera/e;->bk:Lcom/oppo/camera/f;

    invoke-interface {v1}, Lcom/oppo/camera/f;->b()V

    .line 1781
    iget-boolean v1, p0, Lcom/oppo/camera/e;->av:Z

    if-nez v1, :cond_1

    .line 1782
    invoke-virtual {p0}, Lcom/oppo/camera/e;->h()V

    goto :goto_0

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/e;->i()V

    .line 1787
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/h;->c(I)V

    .line 1788
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/oppo/camera/e/a;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->l(I)V

    .line 1789
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/e;->Y()V

    .line 1790
    invoke-virtual {p0, v3}, Lcom/oppo/camera/e;->c(Z)V

    .line 1792
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_STICKER:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1793
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;)V

    .line 1796
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v1}, Lcom/oppo/camera/entry/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e;->cY:Lcom/oppo/camera/ui/control/a;

    if-eqz v1, :cond_3

    .line 1797
    iget-object v1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$9;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$9;-><init>(Lcom/oppo/camera/e;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/camera/n/a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const-string v1, "onPreviewOKMessage X"

    .line 1805
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(I)V
    .locals 2

    .line 4470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraState, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4472
    iput p1, p0, Lcom/oppo/camera/e;->l:I

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceChangeRecSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iput-boolean p1, p0, Lcom/oppo/camera/e;->W:Z

    return-void
.end method

.method public k(I)V
    .locals 3

    const-string v0, "CameraManager"

    .line 5537
    invoke-static {}, Lcom/oppo/camera/o/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5538
    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_0

    .line 5539
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v1, "KEYCODE_SYSTEM_FINGERPRINT_KEYMODE"

    .line 5540
    invoke-static {v1}, Lcom/oppo/camera/o/d;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/e;->z:I

    .line 5543
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/e;->aL:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5545
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e;->bF:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setFingerKeymode(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "setFingerKeymode, FingerprintManager NoSuchMethodError"

    .line 5547
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5550
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerKeymode, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlurAnimRunning, running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    iput-boolean p1, p0, Lcom/oppo/camera/e;->S:Z

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1864
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00d0

    .line 1865
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_gesture_shutter_key"

    .line 1864
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    .line 1866
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 2

    .line 1887
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    .line 1888
    invoke-virtual {v0}, Lcom/oppo/camera/k;->close()V

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_1

    const v1, 0x7f0f0191

    .line 1892
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->b(I)V

    .line 1893
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Z)V

    :cond_1
    return-void
.end method

.method public l(I)V
    .locals 9

    .line 5887
    iget-object v0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    if-nez v0, :cond_0

    .line 5888
    new-instance v0, Lcom/oppo/camera/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/e$d;-><init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V

    iput-object v0, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    .line 5891
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->f()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5893
    iget-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-nez v1, :cond_1

    .line 5894
    new-instance v1, Lcom/oppo/camera/e/g;

    invoke-direct {v1}, Lcom/oppo/camera/e/g;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    .line 5896
    iget-object v1, p0, Lcom/oppo/camera/e;->cj:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_1

    .line 5897
    invoke-virtual {v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a()V

    .line 5901
    :cond_1
    iput p1, p0, Lcom/oppo/camera/e;->w:I

    .line 5902
    iget-object v3, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    iget-object v6, p0, Lcom/oppo/camera/e;->bX:Lcom/oppo/camera/e/f$b;

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {p1}, Lcom/oppo/camera/entry/b;->r()I

    move-result v8

    move v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/e/f;->a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V

    .line 5904
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 5905
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Z)V

    .line 5908
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz p1, :cond_3

    .line 5909
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e$l;->a(I)V

    .line 5912
    :cond_3
    iget p1, p0, Lcom/oppo/camera/e;->bY:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oppo/camera/e;->bY:I

    .line 5913
    invoke-static {v0}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    .line 5914
    iput-boolean v1, p0, Lcom/oppo/camera/e;->ax:Z

    .line 5916
    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/e$29;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$29;-><init>(Lcom/oppo/camera/e;)V

    const-string v1, "pre init keys"

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public l(Z)V
    .locals 8

    .line 2554
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 2556
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness, fSysBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", fSysBrightnessMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", maxScreenBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e;->k:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mbSupportAutoBrightness: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->ab:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbSupportAutoBrightAnimation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/e;->ac:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraManager"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    invoke-static {}, Lcom/oppo/camera/o/d;->z()Z

    move-result v2

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v2, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2567
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    const v5, 0x3dcccccd    # 0.1f

    .line 2571
    iput v5, p0, Lcom/oppo/camera/e;->K:F

    .line 2576
    :cond_0
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2577
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v2, Lcom/oppo/camera/e$15;

    invoke-direct {v2, p0, v0, v1}, Lcom/oppo/camera/e$15;-><init>(Lcom/oppo/camera/e;Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2584
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/e;->ab:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz v2, :cond_2

    return-void

    .line 2588
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2589
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v1, p1, :cond_3

    .line 2593
    iget p1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float p1, p1

    div-float v0, p1, v7

    :cond_3
    cmpl-float p1, v5, v0

    const v1, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_4

    .line 2598
    iget p1, p0, Lcom/oppo/camera/e;->k:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    div-float/2addr v0, v7

    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v0

    .line 2606
    :goto_0
    iput v5, p0, Lcom/oppo/camera/e;->K:F

    .line 2611
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2614
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e$16;

    invoke-direct {v0, p0, v2, v6}, Lcom/oppo/camera/e$16;-><init>(Lcom/oppo/camera/e;Landroid/view/Window;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public m(Z)V
    .locals 11

    const-string v0, "oppo.display.colormode.support"

    .line 2624
    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "oppo.camera.display.mode"

    const-string v2, ""

    .line 2629
    invoke-static {v1, v2}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraManager"

    .line 2631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayActiveMode, bEnterCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cameraDisplayMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mLastActiveDisplayMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/oppo/camera/e;->ct:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-wide/16 v2, -0x1

    .line 2641
    :try_start_1
    iget-object v4, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_2

    const-string v4, "com.oppo.display.OppoMMDisplayQcomQXDM"

    .line 2642
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2643
    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 2645
    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    aput-object v10, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const-string v8, "getActiveMode"

    .line 2646
    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    const-string v8, "setActiveMode"

    .line 2647
    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    .line 2652
    :cond_2
    iget-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    cmp-long v4, v8, v2

    if-nez v4, :cond_4

    if-eqz p1, :cond_4

    .line 2653
    iget-object v4, p0, Lcom/oppo/camera/e;->cv:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    check-cast v4, [J

    if-eqz v4, :cond_3

    .line 2655
    array-length v8, v4

    if-lez v8, :cond_3

    .line 2656
    aget-wide v8, v4, v7

    iput-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    :cond_3
    const-string v4, "CameraManager"

    .line 2659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDisplayActiveMode, get last active mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/oppo/camera/e;->ct:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 2663
    iget-object p1, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2665
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/e;->cw:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-wide v8, p0, Lcom/oppo/camera/e;->ct:J

    cmp-long v5, v8, v2

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v7, p0, Lcom/oppo/camera/e;->ct:J

    long-to-int v7, v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    iput-wide v2, p0, Lcom/oppo/camera/e;->ct:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2670
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2671
    iput-wide v2, p0, Lcom/oppo/camera/e;->ct:J

    const/4 v1, 0x0

    .line 2672
    iput-object v1, p0, Lcom/oppo/camera/e;->cu:Ljava/lang/Object;

    const-string v1, "CameraManager"

    .line 2674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayActiveMode, errMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public m()Z
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 1899
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    invoke-virtual {v0}, Lcom/oppo/camera/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public n(Z)V
    .locals 2

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenBrightness, bEnterCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2682
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/e;->a(ZZ)V

    .line 2683
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->l(Z)V

    const-string p1, "initScreenBrightness X"

    .line 2685
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v0, :cond_0

    .line 1907
    invoke-virtual {v0}, Lcom/oppo/camera/k;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 7

    .line 1914
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    .line 1916
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v2, 0x7f0f00e1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const/4 v0, 0x0

    .line 1919
    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    const-string v0, "temps_flash"

    .line 1920
    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1924
    iput-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 3123
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->e(Z)V

    .line 3125
    iget-object v0, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 3126
    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Z)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 7

    .line 1940
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/e;->q:I

    .line 1942
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    iget-object v1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    const v2, 0x7f0f00f3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/e;->a(IIZZZ)V

    const/4 v0, 0x0

    .line 1945
    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1950
    iput-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBurstCaptureEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->X:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    invoke-virtual {p0, p1}, Lcom/oppo/camera/e;->q(Z)V

    if-eqz p1, :cond_0

    .line 4038
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 4040
    :cond_0
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/g;->a(Landroid/content/Context;)V

    .line 4043
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 4044
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->f()V

    .line 4047
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4048
    iput p1, p0, Lcom/oppo/camera/e;->v:I

    .line 4049
    iget p1, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->s(I)V

    .line 4050
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget v0, p0, Lcom/oppo/camera/e;->v:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->g(I)V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 7

    const-string v0, "CameraManager"

    const-string v1, "prepareRealTimeDcsMsgData"

    .line 1975
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    new-instance v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/oppo/camera/statistics/model/CaptureMsgData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 1978
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v2, p0, Lcom/oppo/camera/e;->u:I

    iput v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchEVValue:I

    .line 1979
    iget-object v2, p0, Lcom/oppo/camera/e;->cq:Ljava/lang/String;

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mShutterType:Ljava/lang/String;

    .line 1980
    iget-object v2, p0, Lcom/oppo/camera/e;->bQ:Lcom/oppo/camera/entry/b;

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1982
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_camera_slogan_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    const-string v3, "on"

    if-eqz v1, :cond_2

    .line 1983
    iget-object v1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz v1, :cond_0

    .line 1984
    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v1}, Lcom/oppo/camera/u;->e()I

    move-result v1

    iput v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mSloganType:I

    .line 1987
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ao()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsSlogan:Ljava/lang/String;

    .line 1990
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_ai_scene_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1991
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->af()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsAiScene:Ljava/lang/String;

    .line 1994
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_zoom_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1995
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->W()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mZoomValue:Ljava/lang/String;

    .line 1998
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v4, "pref_camera_assistant_line_key"

    invoke-virtual {v1, v4}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1999
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f007c

    .line 2000
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1999
    invoke-virtual {v1, v4, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2001
    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsAssistantLine:Ljava/lang/String;

    .line 2004
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00f0

    .line 2005
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_recordlocation_key"

    .line 2004
    invoke-virtual {v1, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    iget-object v4, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsRecordLocation:Ljava/lang/String;

    .line 2007
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f0179

    .line 2008
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_storage_key"

    .line 2007
    invoke-virtual {v4, v6, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsSDCard:Ljava/lang/String;

    .line 2009
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f01bf

    .line 2010
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_volume_key_function_key"

    .line 2009
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mVolumeFunction:Ljava/lang/String;

    .line 2011
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00c3

    .line 2012
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_fingerprint_shutter_key"

    .line 2011
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsFingerprintShutter:Ljava/lang/String;

    .line 2013
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f016f

    .line 2014
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_sound_key"

    .line 2013
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsShutterVoice:Ljava/lang/String;

    .line 2016
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_gesture_shutter_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2017
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f00d0

    .line 2018
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2017
    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsGestureCaptureType:Ljava/lang/String;

    .line 2021
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f018b

    .line 2022
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_tap_shutter_key"

    .line 2021
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsTapCaptureType:Ljava/lang/String;

    .line 2024
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2025
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v3, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v4, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v5, 0x7f0f00f7

    .line 2026
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_mirror_key"

    .line 2025
    invoke-virtual {v3, v5, v4}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsMirror:Ljava/lang/String;

    .line 2029
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_pi_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2030
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v4, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mIsPi:Ljava/lang/String;

    .line 2033
    :cond_8
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_hdr_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2034
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget v5, p0, Lcom/oppo/camera/e;->q:I

    .line 2035
    invoke-static {v3, v5}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2034
    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHdrMode:Ljava/lang/String;

    .line 2038
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2039
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 2040
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2039
    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    goto :goto_1

    .line 2041
    :cond_a
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2042
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 2043
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0196

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2042
    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    goto :goto_1

    .line 2044
    :cond_b
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v3, "pref_camera_videoflashmode_key"

    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2045
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    .line 2046
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2045
    invoke-virtual {v4, v3, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mFlashMode:Ljava/lang/String;

    .line 2049
    :cond_c
    :goto_1
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2050
    iget-object v1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    invoke-virtual {v1}, Lcom/oppo/camera/m;->c()Landroid/location/Location;

    move-result-object v1

    .line 2051
    iget-object v3, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    const-string v1, ""

    :goto_2
    iput-object v1, v3, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mLocation:Ljava/lang/String;

    .line 2054
    :cond_e
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-wide v3, p0, Lcom/oppo/camera/e;->D:J

    iput-wide v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPreviewCaptureCostTime:J

    .line 2055
    iget-wide v3, p0, Lcom/oppo/camera/e;->F:J

    iput-wide v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mBetweenClickBtnCostTime:J

    .line 2056
    iget-object v3, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v3}, Lcom/oppo/camera/d/i;->U()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mDelayTime:Ljava/lang/String;

    .line 2057
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget v3, p0, Lcom/oppo/camera/e;->v:I

    iput v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAiScene:I

    .line 2058
    invoke-direct {p0}, Lcom/oppo/camera/e;->aJ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 2060
    iget-object v1, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v1, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mDelayTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2061
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTimerSize:Ljava/lang/String;

    .line 2062
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mTimerCoordinate:Ljava/lang/String;

    .line 2065
    :cond_f
    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2066
    iget-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/e;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mAeAfLock:Ljava/lang/String;

    .line 2069
    :cond_10
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    iget-object v2, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iput-object v1, p0, Lcom/oppo/camera/e;->aO:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    const-string v1, "prepareRealTimeDcsMsgData X"

    .line 2071
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    .line 4055
    iput-boolean p1, p0, Lcom/oppo/camera/e;->X:Z

    return-void
.end method

.method public r()I
    .locals 2

    .line 2075
    invoke-virtual {p0}, Lcom/oppo/camera/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/e;->bm:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2078
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r(Z)V
    .locals 1

    .line 4497
    iput-boolean p1, p0, Lcom/oppo/camera/e;->R:Z

    .line 4499
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz v0, :cond_0

    .line 4500
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->c(Z)V

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 7

    .line 4710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mbSwitchingCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4712
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->k(I)V

    .line 4714
    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4715
    invoke-interface {v2, v3}, Lcom/oppo/camera/e/f;->a(Z)V

    .line 4718
    :cond_0
    iget-boolean v2, p0, Lcom/oppo/camera/e;->at:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oppo/camera/e;->as:Z

    if-nez v2, :cond_1

    .line 4719
    iput-boolean v3, p0, Lcom/oppo/camera/e;->aC:Z

    .line 4721
    invoke-direct {p0}, Lcom/oppo/camera/e;->bE()V

    .line 4724
    :cond_1
    iput-byte v0, p0, Lcom/oppo/camera/e;->ce:B

    .line 4725
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    .line 4727
    invoke-direct {p0}, Lcom/oppo/camera/e;->by()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4728
    iget-object v2, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-virtual {v2}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v2

    .line 4729
    iget-object v4, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    iget-object v5, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v6, 0x7f0f00d0

    .line 4731
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_gesture_shutter_key"

    .line 4730
    invoke-virtual {v4, v6, v5}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "last_camera_gesture_shutter_key"

    .line 4729
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4732
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4735
    :cond_2
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    .line 4739
    iput-boolean v3, p0, Lcom/oppo/camera/e;->P:Z

    .line 4740
    iput-boolean v0, p0, Lcom/oppo/camera/e;->au:Z

    .line 4741
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ao:Z

    .line 4742
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ay:Z

    .line 4743
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ap:Z

    .line 4744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oppo/camera/e;->cp:J

    const/4 v2, 0x3

    .line 4746
    invoke-direct {p0, v2}, Lcom/oppo/camera/e;->n(I)V

    .line 4747
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->o(Z)V

    .line 4748
    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->R()V

    .line 4750
    invoke-direct {p0}, Lcom/oppo/camera/e;->aC()V

    .line 4752
    iget-object v2, p0, Lcom/oppo/camera/e;->by:Landroid/hardware/foss/FossManager;

    if-eqz v2, :cond_3

    .line 4753
    invoke-virtual {v2}, Landroid/hardware/foss/FossManager;->enableFoss()Z

    .line 4756
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/e;->ak()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4757
    iget-object v2, p0, Lcom/oppo/camera/e;->bz:Lcom/oppo/camera/ui/control/h;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/control/h;->g()V

    .line 4760
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->h(Z)V

    .line 4761
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ad:Z

    const/4 v2, 0x0

    .line 4762
    iput-object v2, p0, Lcom/oppo/camera/e;->cG:Lcom/oppo/camera/e$f;

    .line 4763
    iput-boolean v0, p0, Lcom/oppo/camera/e;->R:Z

    .line 4764
    invoke-virtual {p0, v0, v0}, Lcom/oppo/camera/e;->b(ZZ)V

    .line 4765
    iput-boolean v0, p0, Lcom/oppo/camera/e;->X:Z

    .line 4766
    iput-object v2, p0, Lcom/oppo/camera/e;->bR:[B

    .line 4767
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aB:Z

    .line 4769
    iget-object v4, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/oppo/camera/k;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4770
    invoke-virtual {p0}, Lcom/oppo/camera/e;->l()V

    .line 4773
    :cond_5
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->x(Z)V

    .line 4774
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ae:Z

    .line 4775
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aw:Z

    .line 4776
    iput-object v2, p0, Lcom/oppo/camera/e;->bW:Landroid/util/Size;

    const/4 v4, -0x1

    .line 4777
    iput v4, p0, Lcom/oppo/camera/e;->cH:I

    .line 4779
    iget-object v4, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    if-eqz v4, :cond_6

    .line 4780
    invoke-virtual {v4}, Lcom/oppo/camera/q;->a()V

    .line 4781
    iput-object v2, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    .line 4784
    :cond_6
    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 4785
    iget-object v4, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 4787
    iget-object v4, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v4, :cond_7

    .line 4788
    invoke-virtual {v4}, Lcom/oppo/camera/e$l;->k()V

    .line 4791
    :cond_7
    iget-object v4, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz v4, :cond_8

    .line 4792
    invoke-virtual {v4}, Lcom/oppo/camera/e$y;->d()V

    .line 4795
    :cond_8
    iget-object v4, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v4}, Lcom/oppo/camera/d/i;->T()V

    .line 4797
    invoke-virtual {p0}, Lcom/oppo/camera/e;->ah()V

    .line 4799
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->m(Z)V

    if-nez p1, :cond_9

    .line 4802
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->n(Z)V

    .line 4805
    :cond_9
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/j/b;->c()V

    .line 4806
    invoke-static {}, Lcom/oppo/camera/j/a;->a()Lcom/oppo/camera/j/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/j/a;->c()V

    .line 4807
    iget-object p1, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/n/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4808
    invoke-static {}, Lcom/oppo/camera/o/d;->k()V

    .line 4810
    iget-object p1, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    if-eqz p1, :cond_a

    .line 4811
    invoke-virtual {p1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4812
    iput-object v2, p0, Lcom/oppo/camera/e;->bw:Landroid/os/AsyncTask;

    .line 4815
    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/e;->bT:Lcom/oppo/camera/k;

    if-eqz p1, :cond_b

    .line 4816
    invoke-virtual {p1}, Lcom/oppo/camera/k;->c()V

    .line 4819
    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/e;->bd()V

    .line 4821
    iget-object p1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz p1, :cond_c

    .line 4822
    invoke-virtual {p1}, Lcom/oppo/camera/x;->e()V

    .line 4825
    :cond_c
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    iget-object v2, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    invoke-direct {p0}, Lcom/oppo/camera/e;->bx()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/control/c;Z)V

    .line 4827
    invoke-virtual {p0}, Lcom/oppo/camera/e;->x()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4828
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->N(Z)V

    .line 4831
    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/e;->cJ:Lcom/oppo/camera/e$h;

    invoke-virtual {p1}, Lcom/oppo/camera/e$h;->c()V

    .line 4833
    iget-object p1, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-eqz p1, :cond_e

    .line 4834
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->d()V

    .line 4837
    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/e;->bD:Lcom/oppo/camera/u;

    if-eqz p1, :cond_f

    .line 4838
    invoke-virtual {p1}, Lcom/oppo/camera/u;->f()V

    .line 4841
    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/e;->bE:Lcom/oppo/camera/m;

    if-eqz p1, :cond_10

    .line 4842
    invoke-virtual {p1}, Lcom/oppo/camera/m;->e()V

    .line 4845
    :cond_10
    iget-object p1, p0, Lcom/oppo/camera/e;->bU:Lcom/oppo/camera/n;

    if-eqz p1, :cond_11

    .line 4846
    invoke-virtual {p1}, Lcom/oppo/camera/n;->b()V

    .line 4849
    :cond_11
    iget-object p1, p0, Lcom/oppo/camera/e;->cV:Lcom/oppo/camera/ui/menu/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/f;->b(Lcom/oppo/camera/ui/menu/e;)V

    .line 4851
    iput v0, p0, Lcom/oppo/camera/e;->v:I

    .line 4853
    iget-boolean p1, p0, Lcom/oppo/camera/e;->at:Z

    if-eqz p1, :cond_13

    .line 4854
    iget p1, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->I()Ljava/lang/String;

    move-result-object p1

    const-string v2, "off"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 4855
    :cond_12
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/g;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 4858
    :cond_13
    invoke-static {}, Lcom/oppo/camera/g;->a()Lcom/oppo/camera/g;

    move-result-object p1

    iget-object v2, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/g;->b(Landroid/content/Context;)V

    .line 4861
    :cond_14
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bZ:Lcom/google/lens/sdk/LensApi;

    if-eqz p1, :cond_15

    .line 4863
    :try_start_0
    invoke-virtual {p1}, Lcom/google/lens/sdk/LensApi;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4865
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4869
    :cond_15
    :goto_1
    iget-boolean p1, p0, Lcom/oppo/camera/e;->ch:Z

    if-eqz p1, :cond_16

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 4870
    iget-object p1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const v2, 0x7f0f00e0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 4871
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4872
    iput-boolean v0, p0, Lcom/oppo/camera/e;->ch:Z

    :cond_16
    const-string p1, "onPause X"

    .line 4875
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/oppo/camera/e;->bs:Lcom/oppo/camera/ui/preview/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2180
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 2

    .line 2192
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$11;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$11;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 5839
    iput-boolean p1, p0, Lcom/oppo/camera/e;->ai:Z

    .line 5841
    iget-object p1, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz p1, :cond_0

    .line 5842
    iget-boolean v0, p0, Lcom/oppo/camera/e;->ai:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->u(Z)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 2219
    iget-object v0, p0, Lcom/oppo/camera/e;->cM:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e$13;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$13;-><init>(Lcom/oppo/camera/e;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u(Z)V
    .locals 3

    .line 5847
    iget-object v0, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 5849
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5850
    iput-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_0

    .line 5852
    iget-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    if-nez p1, :cond_2

    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/e;->cf:Z

    if-nez p1, :cond_2

    .line 5853
    invoke-static {}, Lcom/oppo/camera/MyApplication;->a()Lcom/oppo/camera/h;

    move-result-object p1

    new-instance v1, Lcom/oppo/camera/e$28;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$28;-><init>(Lcom/oppo/camera/e;)V

    const-string v2, "clearLockDB"

    invoke-virtual {p1, v1, v2}, Lcom/oppo/camera/h;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5860
    iput-boolean v0, p0, Lcom/oppo/camera/e;->cf:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5863
    iput-boolean p1, p0, Lcom/oppo/camera/e;->aj:Z

    .line 5866
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz p1, :cond_3

    .line 5867
    iget-boolean v0, p0, Lcom/oppo/camera/e;->aj:Z

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->e(Z)V

    :cond_3
    return-void
.end method

.method public v(Z)V
    .locals 5

    .line 7016
    iget-object v0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7017
    iget-object v0, p0, Lcom/oppo/camera/e;->cc:Lcom/oppo/camera/e$l;

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$m;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 7020
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCaptureSession, mCameraState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/e;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbAEAFLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOneCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e;->P:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isHFR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modeChangeTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7024
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/oppo/camera/e;->P:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 7028
    :cond_1
    sget-boolean v0, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/e;->N:Z

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/e;->M:Z

    if-eqz v0, :cond_4

    .line 7030
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e;->aU:Lcom/oppo/camera/i;

    invoke-direct {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/content/SharedPreferences;)Z

    .line 7033
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$n;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 7034
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;)V

    .line 7036
    iget-object v1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oppo/camera/e$y;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7037
    iget-object v1, p0, Lcom/oppo/camera/e;->bu:Lcom/oppo/camera/e$y;

    invoke-virtual {v1}, Lcom/oppo/camera/e$y;->d()V

    .line 7042
    :cond_5
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    if-eqz v1, :cond_6

    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 7043
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7044
    invoke-direct {p0}, Lcom/oppo/camera/e;->aQ()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 7046
    :cond_6
    iget-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    const-string v2, "pref_zoom_key"

    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 7049
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    invoke-virtual {v1}, Lcom/oppo/camera/x;->a()F

    move-result v1

    goto :goto_2

    .line 7047
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/e;->aw()F

    move-result v1

    .line 7052
    :goto_2
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e;->b(F)V

    const/4 v1, 0x0

    .line 7054
    iput-boolean v1, p0, Lcom/oppo/camera/e;->aC:Z

    .line 7056
    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->a()V

    .line 7058
    iget-object v1, p0, Lcom/oppo/camera/e;->aY:Lcom/oppo/camera/e/h;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/e/h;->a(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/e;->bn:Landroid/graphics/Rect;

    .line 7059
    invoke-direct {p0}, Lcom/oppo/camera/e;->bj()V

    const-string v0, "pref_face_detection_key"

    .line 7061
    invoke-virtual {p0, v0}, Lcom/oppo/camera/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7062
    invoke-virtual {p0}, Lcom/oppo/camera/e;->t()V

    goto :goto_3

    .line 7064
    :cond_9
    invoke-virtual {p0}, Lcom/oppo/camera/e;->u()V

    .line 7067
    :goto_3
    iget v0, p0, Lcom/oppo/camera/e;->q:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 7068
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->d()I

    move-result v1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 7069
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    .line 7068
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 7070
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->Q:Z

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(Z)V

    .line 7073
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/e;->aX:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/e;->cd:Lcom/oppo/camera/e$n;

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->e()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/e;->aZ:Lcom/oppo/camera/e/f$e;

    invoke-direct {p0}, Lcom/oppo/camera/e;->bl()I

    move-result v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/oppo/camera/e/f;->a(ILcom/oppo/camera/e/f$e;ZI)V

    :cond_b
    :goto_4
    return-void
.end method

.method public v()Z
    .locals 2

    .line 2244
    iget-object v0, p0, Lcom/oppo/camera/e;->aQ:Ljava/lang/Object;

    monitor-enter v0

    .line 2245
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/e;->O:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w(Z)V
    .locals 1

    .line 8698
    iget-object v0, p0, Lcom/oppo/camera/e;->bq:Lcom/oppo/camera/ui/e;

    if-eqz v0, :cond_0

    .line 8699
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/e;->z(Z)V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    .line 2268
    iget-boolean v0, p0, Lcom/oppo/camera/e;->T:Z

    return v0
.end method

.method public x(Z)V
    .locals 2

    .line 9717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableOpticalZoomMenu, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9719
    iget-object v0, p0, Lcom/oppo/camera/e;->bt:Lcom/oppo/camera/x;

    if-eqz v0, :cond_0

    .line 9720
    invoke-virtual {v0, p1}, Lcom/oppo/camera/x;->a(Z)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    .line 2302
    iget-boolean v0, p0, Lcom/oppo/camera/e;->S:Z

    return v0
.end method

.method public y(Z)V
    .locals 2

    .line 12822
    iput-boolean p1, p0, Lcom/oppo/camera/e;->at:Z

    .line 12824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExitCameraToSetting, mbSettingClickCausedPause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e;->at:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y()Z
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "needPreviewImage"

    .line 2325
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    iget-object v0, p0, Lcom/oppo/camera/e;->cL:Lcom/oppo/camera/q;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2328
    iget-boolean v2, p0, Lcom/oppo/camera/e;->U:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/oppo/camera/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public z()V
    .locals 8

    const-string v0, "CameraManager"

    const-string v1, "restoreScreenBrightnessForChangeOnRuningtime"

    .line 2468
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    iget-object v1, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2471
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2474
    iget-boolean v3, p0, Lcom/oppo/camera/e;->ab:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oppo/camera/e;->ac:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2479
    :cond_0
    iget v3, p0, Lcom/oppo/camera/e;->K:F

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2480
    iget v4, p0, Lcom/oppo/camera/e;->k:I

    int-to-double v4, v4

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    goto :goto_1

    .line 2475
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/e;->aT:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/oppo/camera/e;->k:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const-string v5, "screen_brightness"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    .line 2477
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2483
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2485
    iget-object v1, p0, Lcom/oppo/camera/e;->bv:Lcom/oppo/camera/d/i;

    if-eqz v1, :cond_2

    .line 2486
    invoke-virtual {v1, v3}, Lcom/oppo/camera/d/i;->j(I)V

    :cond_2
    const-string v1, "restoreScreenBrightnessForChangeOnRuningtime X"

    .line 2489
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
