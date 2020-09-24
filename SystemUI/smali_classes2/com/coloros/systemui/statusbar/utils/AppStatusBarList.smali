.class public Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;
.super Ljava/lang/Object;
.source "AppStatusBarList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStatusBarList"

.field private static sBgRecordingHighlightAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBgExcludeAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    return-object v0
.end method

.method public static init()V
    .locals 0

    .line 28
    invoke-static {}, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->initBgRecordingHighlightAppList()V

    return-void
.end method

.method private static initBgRecordingHighlightAppList()V
    .locals 2

    .line 37
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.immomo.momo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.alibaba.android.rimet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.coloros.soundrecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.iflytek.speechcloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.android.fmradio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.zing.zalo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.bbm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.viber.voip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.bsb.hike"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.snapchat.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.imo.android.imoim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.coloros.screenrecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.facebook.mlite"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/AppStatusBarList;->sBgRecordingHighlightAppList:Ljava/util/List;

    const-string v1, "com.oppo.ovoicemanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
