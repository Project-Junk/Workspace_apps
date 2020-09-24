.class Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;
.super Ljava/lang/Object;
.source "WeChatEnvelopeFieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdaptationEnvelopeInfo"
.end annotation


# instance fields
.field mEnvelopeContentTag:Ljava/lang/String;

.field mEnvelopeFilterField:Ljava/lang/String;

.field mEnvelopeFilterValue:Ljava/lang/String;

.field mEnvelopeGroupTag:Ljava/lang/String;

.field mEnvelopeUserField:Ljava/lang/String;

.field mEnvelopeUserNameTagFirst:Ljava/lang/String;

.field mEnvelopeUserNameTagLast:Ljava/lang/String;

.field mPkgVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$AdaptationEnvelopeInfo;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
