.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIMEOFFSETNANOS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field public bitField0:I

.field public memoizedIsInitialized:B

.field public timeOffsetNanos:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5950
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 5964
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5970
    iput-byte v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 5977
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    const-wide/16 v0, 0x0

    .line 5978
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5985
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    if-eqz p2, :cond_6

    .line 5991
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 5995
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 6018
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6013
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    .line 6014
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    goto :goto_0

    .line 6001
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 6003
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;

    move-result-object v4

    if-nez v4, :cond_3

    .line 6005
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 6007
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    .line 6008
    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6029
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 6030
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6027
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6032
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6033
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->makeExtensionsImmutable()V

    .line 6034
    throw p1

    .line 6032
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6033
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->makeExtensionsImmutable()V

    return-void

    .line 5987
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 5973
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5970
    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V
    .locals 0

    .line 5942
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4500()Z
    .locals 1

    .line 5942
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5942
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1

    .line 6132
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6039
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;
    .locals 1

    .line 6124
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;
    .locals 1

    .line 6128
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6096
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6097
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6104
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6105
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6058
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6065
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6111
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6112
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6119
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6120
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6082
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6083
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6090
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 6091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6045
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6052
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6070
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6077
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 6136
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6229
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v1, :cond_1

    .line 6230
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 6232
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    .line 6235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasType()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 6236
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasType()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6237
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 6239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasTimeOffsetNanos()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasTimeOffsetNanos()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 6240
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasTimeOffsetNanos()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 6241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getTimeOffsetNanos()J

    move-result-wide v1

    .line 6242
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getTimeOffsetNanos()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 6244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 0

    .line 6294
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object p0

    return-object p0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 6289
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 6207
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6211
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6212
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    .line 6213
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6215
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 6216
    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    .line 6217
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6219
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6220
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedSize:I

    return v0
.end method

.method public getTimeOffsetNanos()J
    .locals 2

    .line 6180
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    return-wide v0
.end method

.method public getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;
    .locals 0

    .line 6165
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6166
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;->ON_SCREEN_ON:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Type;

    :cond_0
    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 6142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasTimeOffsetNanos()Z
    .locals 1

    .line 6173
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasType()Z
    .locals 1

    .line 6157
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 6250
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 6251
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedHashCode:I

    return p0

    :cond_0
    const/16 v0, 0x30b

    .line 6254
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 6257
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    add-int/2addr v0, v1

    .line 6259
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->hasTimeOffsetNanos()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->getTimeOffsetNanos()J

    move-result-wide v1

    .line 6261
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 6264
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6265
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 6148
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$4200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    const-class v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    .line 6149
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6185
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 6189
    :cond_1
    iput-byte v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;
    .locals 0

    .line 6271
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->newBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;
    .locals 1

    .line 6283
    new-instance p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5942
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;
    .locals 2

    .line 6276
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;-><init>(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;-><init>(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    .line 6277
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6196
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6197
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6199
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6200
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 6202
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
