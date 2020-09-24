.class public final Lcom/coloros/systemui/qs/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;,
        Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;,
        Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;,
        Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItemController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItemController.kt\ncom/coloros/systemui/qs/privacy/PrivacyItemController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,260:1\n1582#2,2:261\n1309#2:263\n1378#2,3:264\n1216#2,12:267\n1361#2,9:279\n1582#2,2:288\n1370#2:290\n1582#2,2:291\n1582#2,2:293\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyItemController.kt\ncom/coloros/systemui/qs/privacy/PrivacyItemController\n*L\n121#1,2:261\n131#1:263\n131#1,3:264\n177#1,12:267\n178#1,9:279\n178#1,2:288\n178#1:290\n248#1,2:291\n253#1,2:293\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0011\u0008\u0007\u0018\u0000 P2\u00020\u0001:\u0004OPQRB+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u000fJ\u0016\u00105\u001a\u0002062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J3\u00108\u001a\u0002062\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0010\u0010=\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020?\u0018\u00010>H\u0016\u00a2\u0006\u0002\u0010@J\u0008\u0010A\u001a\u000206H\u0002J\u000e\u0010B\u001a\u0002062\u0006\u00107\u001a\u00020\u000fJ\u0016\u0010B\u001a\u0002062\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\u0015\u0010C\u001a\u0002062\u0006\u0010D\u001a\u00020\u0019H\u0001\u00a2\u0006\u0002\u0008EJ\u0018\u0010F\u001a\u00020\u00192\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010G\u001a\u00020?H\u0002J\u0012\u0010H\u001a\u0004\u0018\u00010\u001d2\u0006\u0010I\u001a\u00020JH\u0002J\u0008\u0010K\u001a\u000206H\u0002J\u0010\u0010L\u001a\u0002062\u0006\u0010M\u001a\u00020\u0019H\u0002J\u0008\u0010N\u001a\u000206H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R8\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00162\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00168@@@X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010*\u001a\n ,*\u0004\u0018\u00010+0+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R4\u0010/\u001a\u00060.R\u00020\u00002\n\u0010-\u001a\u00060.R\u00020\u00008\u0000@@X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00080\u0010 \u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\u00a8\u0006S"
    }
    d2 = {
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController;",
        "Lcom/android/systemui/Dumpable;",
        "context",
        "Landroid/content/Context;",
        "appOpsController",
        "Lcom/android/systemui/appops/AppOpsController;",
        "uiHandler",
        "Landroid/os/Handler;",
        "bgLooper",
        "Landroid/os/Looper;",
        "(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Looper;)V",
        "bgHandler",
        "callbacks",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
        "cb",
        "com/coloros/systemui/qs/privacy/PrivacyItemController$cb$1",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;",
        "getContext",
        "()Landroid/content/Context;",
        "currentUserIds",
        "",
        "",
        "listening",
        "",
        "notifyChanges",
        "Ljava/lang/Runnable;",
        "<set-?>",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
        "privacyList",
        "privacyList$annotations",
        "()V",
        "getPrivacyList$SystemUI_realmeReleaseExp",
        "()Ljava/util/List;",
        "setPrivacyList$SystemUI_realmeReleaseExp",
        "(Ljava/util/List;)V",
        "systemApp",
        "Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "getSystemApp",
        "()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;",
        "updateListAndNotifyChanges",
        "userManager",
        "Landroid/os/UserManager;",
        "kotlin.jvm.PlatformType",
        "value",
        "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;",
        "userSwitcherReceiver",
        "userSwitcherReceiver$annotations",
        "getUserSwitcherReceiver$SystemUI_realmeReleaseExp",
        "()Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;",
        "setUserSwitcherReceiver$SystemUI_realmeReleaseExp",
        "(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;)V",
        "addCallback",
        "",
        "callback",
        "dump",
        "fd",
        "Ljava/io/FileDescriptor;",
        "pw",
        "Ljava/io/PrintWriter;",
        "args",
        "",
        "",
        "(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V",
        "registerReceiver",
        "removeCallback",
        "setListening",
        "listen",
        "setListening$SystemUI_realmeReleaseExp",
        "shouldSkipPkgForOngoingUsage",
        "packageName",
        "toPrivacyItem",
        "appOpItem",
        "Lcom/android/systemui/appops/AppOpItem;",
        "unregisterReceiver",
        "update",
        "updateUsers",
        "updatePrivacyList",
        "Callback",
        "Companion",
        "NotifyChangesToCallback",
        "Receiver",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;

.field public static final METHOD_RESULT:Ljava/lang/String; = "result"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final METHOD_SKIP_PKG_FOR_ONGOING_USAGE:Ljava/lang/String; = "skipPkgForOngoingUsage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OPS:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PERMISSION_PROVIDER:Ljava/lang/String; = "com.coloros.provider.PermissionProvider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "PrivacyItemController"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UPDATE_LIST_DELAY:J = 0x12cL

.field private static final intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final bgHandler:Landroid/os/Handler;

.field private final bgLooper:Landroid/os/Looper;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cb:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listening:Z

.field private final notifyChanges:Ljava/lang/Runnable;

.field private privacyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemApp:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiHandler:Landroid/os/Handler;

.field private final updateListAndNotifyChanges:Ljava/lang/Runnable;

.field private final userManager:Landroid/os/UserManager;

.field private userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->Companion:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Companion;

    const/4 v0, 0x4

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->OPS:[I

    const-string v0, "android.intent.action.USER_FOREGROUND"

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    const-string v3, "android.location.MODE_CHANGED"

    .line 61
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->intents:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/appops/AppOpsController;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/appops/AppOpsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "qs_background_looper"
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appOpsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgLooper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->bgLooper:Landroid/os/Looper;

    .line 70
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->bgLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->bgHandler:Landroid/os/Handler;

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    .line 78
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 81
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    iget-object p2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    const p3, 0x7f1102f6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.getString(R.string.device_services)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    const/16 p4, 0x3e8

    invoke-direct {p1, p2, p4, p3}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->systemApp:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$notifyChanges$1;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    .line 89
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    .line 94
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->cb:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;

    .line 109
    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCurrentUserIds$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getIntents$cp()Ljava/util/List;
    .locals 1

    .line 46
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->intents:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getNotifyChanges$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->notifyChanges:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getOPS$cp()[I
    .locals 1

    .line 46
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->OPS:[I

    return-object v0
.end method

.method public static final synthetic access$getUiHandler$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setCurrentUserIds$p(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;Ljava/util/List;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$update(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->update(Z)V

    return-void
.end method

.method public static final synthetic access$updatePrivacyList(Lcom/coloros/systemui/qs/privacy/PrivacyItemController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->updatePrivacyList()V

    return-void
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->listening:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->setListening$SystemUI_realmeReleaseExp(Z)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->getPrivacyList$SystemUI_realmeReleaseExp()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static synthetic privacyList$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final registerReceiver()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    move-object v1, p0

    check-cast v1, Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    sget-object p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->intents:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 261
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v1, Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->setListening$SystemUI_realmeReleaseExp(Z)V

    :cond_0
    return-void
.end method

.method private final shouldSkipPkgForOngoingUsage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    .line 185
    move-object v0, p0

    check-cast v0, Landroid/content/ContentProviderClient;

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string v2, "com.coloros.provider.PermissionProvider"

    .line 192
    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string p1, "skipPkgForOngoingUsage"

    .line 196
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 198
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 200
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    throw p0
.end method

.method private final toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/coloros/systemui/qs/privacy/PrivacyItem;
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appOpItem.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->shouldSkipPkgForOngoingUsage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getCode()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_1

    return-object v1

    .line 213
    :cond_1
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_CAMERA:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    goto :goto_0

    .line 212
    :cond_3
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_LOCATION:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    goto :goto_0

    .line 211
    :cond_4
    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyType;->TYPE_LOCATION:Lcom/coloros/systemui/qs/privacy/PrivacyType;

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_5

    new-instance p1, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->systemApp:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-direct {p1, v0, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    return-object p1

    .line 217
    :cond_5
    new-instance v1, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/appops/AppOpItem;->getUid()I

    move-result p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p1, p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 218
    new-instance p0, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;-><init>(Lcom/coloros/systemui/qs/privacy/PrivacyType;Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V

    return-object p0
.end method

.method private final unregisterReceiver()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final update(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 130
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "userManager.getProfiles(currentUser)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 264
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 265
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 131
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_0
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->bgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    return-void

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->bgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->updateListAndNotifyChanges:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final updatePrivacyList()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    invoke-interface {v3, v2}, Lcom/android/systemui/appops/AppOpsController;->getActiveAppOpsForUser(I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 276
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 278
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 287
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    const-string v3, "it"

    .line 178
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->toPrivacyItem(Lcom/android/systemui/appops/AppOpItem;)Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 178
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    return-void
.end method

.method public static synthetic userSwitcherReceiver$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->addCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string p1, "PrivacyItemController state:"

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Listening: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->listening:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Current user ids: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->currentUserIds:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "  Privacy Items:"

    .line 247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->getPrivacyList$SystemUI_realmeReleaseExp()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 291
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, "    "

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/systemui/qs/privacy/PrivacyItem;

    if-eqz p2, :cond_5

    .line 249
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_4

    .line 250
    invoke-virtual {p3}, Lcom/coloros/systemui/qs/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    const-string p1, "  Callbacks:"

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    :cond_7
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 293
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 254
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_9

    .line 255
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    if-eqz p2, :cond_8

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final declared-synchronized getPrivacyList$SystemUI_realmeReleaseExp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSystemApp()Lcom/coloros/systemui/qs/privacy/PrivacyApplication;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->systemApp:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    return-object p0
.end method

.method public final getUserSwitcherReceiver$SystemUI_realmeReleaseExp()Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    return-object p0
.end method

.method public final removeCallback(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public final setListening$SystemUI_realmeReleaseExp(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->listening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 143
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->listening:Z

    .line 144
    iget-boolean p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->listening:Z

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->OPS:[I

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->cb:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;

    check-cast v1, Lcom/android/systemui/appops/AppOpsController$Callback;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/appops/AppOpsController;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 146
    invoke-direct {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->registerReceiver()V

    const/4 p1, 0x1

    .line 147
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->update(Z)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    sget-object v0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->OPS:[I

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->cb:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$cb$1;

    check-cast v1, Lcom/android/systemui/appops/AppOpsController$Callback;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/appops/AppOpsController;->removeCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->unregisterReceiver()V

    :goto_0
    return-void
.end method

.method public final declared-synchronized setPrivacyList$SystemUI_realmeReleaseExp(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->privacyList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUserSwitcherReceiver$SystemUI_realmeReleaseExp(Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;)V
    .locals 2
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->userSwitcherReceiver:Lcom/coloros/systemui/qs/privacy/PrivacyItemController$Receiver;

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyItemController;->registerReceiver()V

    return-void
.end method
