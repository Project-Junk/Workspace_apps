.class public Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;
.super Ljava/lang/Object;
.source "WeChatEnvelopeFieldList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;,
        Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;
    }
.end annotation


# static fields
.field public static final ENVELOPE_CONTENT_TAG:Ljava/lang/String; = "envelope_content_tag"

.field public static final ENVELOPE_FILTER_FIELD:Ljava/lang/String; = "envelope_filter_field"

.field public static final ENVELOPE_FILTER_VALUE:Ljava/lang/String; = "envelope_filter_value"

.field public static final ENVELOPE_GROUP_TAG:Ljava/lang/String; = "envelope_group_tag"

.field public static final ENVELOPE_USER_FIELD:Ljava/lang/String; = "envelope_user_field"

.field public static final ENVELOPE_USER_NAME_TAG_FIRST:Ljava/lang/String; = "envelope_user_name_tag_first"

.field public static final ENVELOPE_USER_NAME_TAG_LAST:Ljava/lang/String; = "envelope_user_name_tag_last"

.field private static final MAX_COUNT:I = 0x14

.field public static final PKG_VERSION:Ljava/lang/String; = "pkg_version"

.field private static TAG:Ljava/lang/String; = "WeChatEnvelopeFieldList"

.field private static final WECHAT_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final mAdaptationEnvelopeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDefaultEnvelopeInfo:[Ljava/lang/String;

.field private static final mObject:Ljava/lang/Object;

.field private static volatile sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasBootCompleted:Z

.field private mHasInitialized:Z

.field private mReadEnvelopeData:Z

.field private mReceiverBootComplete:Landroid/content/BroadcastReceiver;

.field private mUpdateEnvelopeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "0"

    const-string v1, "MainUI_User_Last_Msg_Type"

    const-string v2, "436207665"

    const-string v3, "Main_User"

    const-string v4, "@chatroom"

    const-string v5, "]"

    const-string v6, ": [\u5fae\u4fe1\u7ea2\u5305]"

    const-string v7, "[\u5fae\u4fe1\u7ea2\u5305]"

    .line 21
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasInitialized:Z

    .line 49
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mReadEnvelopeData:Z

    .line 50
    iput v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mUpdateEnvelopeCount:I

    .line 54
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasBootCompleted:Z

    .line 55
    new-instance v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$1;-><init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mReceiverBootComplete:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeInfoFromDB()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 19
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mReadEnvelopeData:Z

    return p1
.end method

.method public static getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;
    .locals 2

    .line 93
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;-><init>()V

    sput-object v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->sWeChatEnvelopeFieldList:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    return-object v0
.end method

.method private updateEnvelopeDefaultInfo()V
    .locals 3

    .line 118
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    new-instance v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;-><init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    .line 120
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mPkgVersion:Ljava/lang/String;

    .line 121
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterField:Ljava/lang/String;

    .line 122
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterValue:Ljava/lang/String;

    .line 123
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserField:Ljava/lang/String;

    .line 124
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeGroupTag:Ljava/lang/String;

    .line 125
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagFirst:Ljava/lang/String;

    .line 126
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagLast:Ljava/lang/String;

    .line 127
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object p0, p0, v2

    iput-object p0, v1, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeContentTag:Ljava/lang/String;

    .line 128
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateEnvelopeInfoFromDB()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasInitialized:Z

    if-nez v0, :cond_0

    .line 134
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->TAG:Ljava/lang/String;

    const-string v0, "color navigation bar util isn\'t init."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$2;-><init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 179
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasInitialized:Z

    if-nez v0, :cond_0

    .line 180
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->TAG:Ljava/lang/String;

    const-string p1, "color navigation bar util isn\'t init."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasBootCompleted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mReadEnvelopeData:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mUpdateEnvelopeCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeInfoFromDB()V

    .line 185
    iget v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mUpdateEnvelopeCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mUpdateEnvelopeCount:I

    .line 187
    :cond_1
    sget-object v0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeDefaultInfo()V

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mContext:Landroid/content/Context;

    const-string v3, "com.tencent.mm"

    invoke-static {v2, v3}, Lcom/coloros/common/util/AppInfoUtil;->getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    .line 194
    :goto_0
    sget-object v7, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 195
    sget-object v7, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object v7, v7, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mPkgVersion:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/coloros/common/util/AppInfoUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v5, 0x1

    move v8, v6

    move v6, v5

    move v5, v8

    goto :goto_0

    :cond_3
    if-ltz v6, :cond_6

    .line 203
    sget-object v2, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 204
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeDefaultInfo()V

    .line 206
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p0, "envelope_user_name_tag_first"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_1
    const-string p0, "envelope_filter_value"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :sswitch_2
    const-string p0, "envelope_filter_field"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v3

    goto :goto_2

    :sswitch_3
    const-string p0, "envelope_content_tag"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_4
    const-string p0, "envelope_group_tag"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_5
    const-string p0, "envelope_user_field"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_6
    const-string p0, "envelope_user_name_tag_last"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v4

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 220
    :pswitch_0
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeContentTag:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 218
    :pswitch_1
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagLast:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 216
    :pswitch_2
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserNameTagFirst:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 214
    :pswitch_3
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeGroupTag:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 212
    :pswitch_4
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeUserField:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 210
    :pswitch_5
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterValue:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 208
    :pswitch_6
    sget-object p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->mEnvelopeFilterField:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 226
    :cond_6
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, ""

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x787e9d56 -> :sswitch_6
        -0x4aa610ab -> :sswitch_5
        -0x3d71ebd5 -> :sswitch_4
        -0x1878b1b -> :sswitch_3
        0x31dce182 -> :sswitch_2
        0x32bad1f9 -> :sswitch_1
        0x685a051c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mHasInitialized:Z

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->updateEnvelopeDefaultInfo()V

    .line 111
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->mReceiverBootComplete:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
