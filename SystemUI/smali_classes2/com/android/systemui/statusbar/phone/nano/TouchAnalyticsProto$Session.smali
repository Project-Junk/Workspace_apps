.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    }
.end annotation


# static fields
.field public static final BUILD_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0xd

.field public static final DURATIONMILLIS_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONEEVENTS_FIELD_NUMBER:I = 0xc

.field public static final RESULT_FIELD_NUMBER:I = 0x4

.field public static final SENSOREVENTS_FIELD_NUMBER:I = 0x6

.field public static final STARTTIMESTAMPMILLIS_FIELD_NUMBER:I = 0x1

.field public static final TOUCHAREAHEIGHT_FIELD_NUMBER:I = 0xa

.field public static final TOUCHAREAWIDTH_FIELD_NUMBER:I = 0x9

.field public static final TOUCHEVENTS_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field public bitField0:I

.field public volatile build:Ljava/lang/Object;

.field public volatile deviceId:Ljava/lang/Object;

.field public durationMillis:J

.field public memoizedIsInitialized:B

.field public phoneEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field public result:I

.field public sensorEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public startTimestampMillis:J

.field public touchAreaHeight:I

.field public touchAreaWidth:I

.field public touchEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 372
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 386
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 408
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 401
    iput-byte v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedIsInitialized:B

    const-wide/16 v0, 0x0

    .line 409
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis:J

    .line 410
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis:J

    const-string v0, ""

    .line 411
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 412
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    .line 414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    .line 415
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth:I

    .line 416
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight:I

    .line 417
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    .line 418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    .line 419
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;-><init>()V

    if-eqz p2, :cond_d

    .line 431
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const/16 v3, 0x200

    const/16 v4, 0x20

    const/16 v5, 0x10

    if-nez v1, :cond_9

    .line 435
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    .line 524
    invoke-virtual {p0, p1, v0, p2, v6}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 518
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 519
    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 520
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    and-int/lit16 v6, v2, 0x200

    if-eq v6, v3, :cond_1

    .line 510
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    or-int/lit16 v2, v2, 0x200

    .line 513
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    sget-object v7, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 514
    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 513
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 499
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object v7

    if-nez v7, :cond_2

    const/16 v7, 0xb

    .line 501
    invoke-virtual {v0, v7, v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 503
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 504
    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    goto :goto_0

    .line 492
    :sswitch_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight:I

    goto :goto_0

    .line 487
    :sswitch_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/2addr v6, v5

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth:I

    goto :goto_0

    :sswitch_5
    and-int/lit8 v6, v2, 0x20

    if-eq v6, v4, :cond_3

    .line 479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 482
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    sget-object v7, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 483
    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 482
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v6, v2, 0x10

    if-eq v6, v5, :cond_4

    .line 470
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 473
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    sget-object v7, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 474
    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 473
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 457
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 459
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    move-result-object v8

    if-nez v8, :cond_5

    .line 461
    invoke-virtual {v0, v7, v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 463
    :cond_5
    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 464
    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    goto/16 :goto_0

    .line 451
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    .line 452
    iget v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 453
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    goto/16 :goto_0

    .line 446
    :sswitch_9
    iget v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis:J

    goto/16 :goto_0

    .line 441
    :sswitch_a
    iget v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    or-int/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    .line 442
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    move v1, v8

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 535
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 536
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 533
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v5, :cond_6

    .line 539
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    :cond_6
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v4, :cond_7

    .line 542
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    :cond_7
    and-int/lit16 p2, v2, 0x200

    if-ne p2, v3, :cond_8

    .line 545
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    .line 547
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->makeExtensionsImmutable()V

    .line 549
    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v5, :cond_a

    .line 539
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    :cond_a
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v4, :cond_b

    .line 542
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    :cond_b
    and-int/lit16 p1, v2, 0x200

    if-ne p1, v3, :cond_c

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    .line 547
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->makeExtensionsImmutable()V

    return-void

    .line 427
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
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

    .line 405
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 401
    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4800()Z
    .locals 1

    .line 355
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5000()Z
    .locals 1

    .line 355
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5100()Z
    .locals 1

    .line 355
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5200()Z
    .locals 1

    .line 355
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1

    .line 647
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 554
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;
    .locals 1

    .line 639
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;
    .locals 1

    .line 643
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 612
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 620
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 627
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 635
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 598
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    .line 606
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;",
            ">;"
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1058
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    if-nez v1, :cond_1

    .line 1059
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1061
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    .line 1064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasStartTimestampMillis()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasStartTimestampMillis()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 1065
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasStartTimestampMillis()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1066
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getStartTimestampMillis()J

    move-result-wide v1

    .line 1067
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getStartTimestampMillis()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1069
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDurationMillis()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDurationMillis()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 1070
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDurationMillis()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 1071
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDurationMillis()J

    move-result-wide v1

    .line 1072
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDurationMillis()J

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

    .line 1074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasBuild()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasBuild()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 1075
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasBuild()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 1076
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getBuild()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getBuild()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 1079
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasResult()Z

    move-result v2

    if-ne v1, v2, :cond_b

    move v1, v0

    goto :goto_6

    :cond_b
    move v1, v3

    .line 1080
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 1081
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    if-ne v1, v2, :cond_c

    move v1, v0

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 1083
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchEventsList()Ljava/util/List;

    move-result-object v1

    .line 1084
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v3

    :goto_8
    if-eqz v1, :cond_f

    .line 1085
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getSensorEventsList()Ljava/util/List;

    move-result-object v1

    .line 1086
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getSensorEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_9

    :cond_f
    move v1, v3

    :goto_9
    if-eqz v1, :cond_10

    .line 1087
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaWidth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaWidth()Z

    move-result v2

    if-ne v1, v2, :cond_10

    move v1, v0

    goto :goto_a

    :cond_10
    move v1, v3

    .line 1088
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaWidth()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v1, :cond_11

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaWidth()I

    move-result v1

    .line 1090
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaWidth()I

    move-result v2

    if-ne v1, v2, :cond_11

    move v1, v0

    goto :goto_b

    :cond_11
    move v1, v3

    :cond_12
    :goto_b
    if-eqz v1, :cond_13

    .line 1092
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaHeight()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaHeight()Z

    move-result v2

    if-ne v1, v2, :cond_13

    move v1, v0

    goto :goto_c

    :cond_13
    move v1, v3

    .line 1093
    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaHeight()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_14

    .line 1094
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaHeight()I

    move-result v1

    .line 1095
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaHeight()I

    move-result v2

    if-ne v1, v2, :cond_14

    move v1, v0

    goto :goto_d

    :cond_14
    move v1, v3

    :cond_15
    :goto_d
    if-eqz v1, :cond_16

    .line 1097
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasType()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasType()Z

    move-result v2

    if-ne v1, v2, :cond_16

    move v1, v0

    goto :goto_e

    :cond_16
    move v1, v3

    .line 1098
    :goto_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasType()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_17

    .line 1099
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    if-ne v1, v2, :cond_17

    move v1, v0

    goto :goto_f

    :cond_17
    move v1, v3

    :cond_18
    :goto_f
    if-eqz v1, :cond_19

    .line 1101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getPhoneEventsList()Ljava/util/List;

    move-result-object v1

    .line 1102
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getPhoneEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v0

    goto :goto_10

    :cond_19
    move v1, v3

    :goto_10
    if-eqz v1, :cond_1a

    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDeviceId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDeviceId()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    move v1, v0

    goto :goto_11

    :cond_1a
    move v1, v3

    .line 1104
    :goto_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v0

    goto :goto_12

    :cond_1b
    move v1, v3

    :cond_1c
    :goto_12
    if-eqz v1, :cond_1d

    .line 1108
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_13

    :cond_1d
    move v0, v3

    :goto_13
    return v0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 711
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 713
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getBuildBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    .line 727
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 728
    check-cast v0, Ljava/lang/String;

    .line 729
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 731
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    return-object v0

    .line 734
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 0

    .line 1195
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    .line 921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 922
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 924
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 926
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    .line 940
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 941
    check-cast v0, Ljava/lang/String;

    .line 942
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 944
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    return-object v0

    .line 947
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 693
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;",
            ">;"
        }
    .end annotation

    .line 1190
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->PARSER:Lcom/google/protobuf/Parser;

    return-object p0
.end method

.method public getPhoneEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object p0
.end method

.method public getPhoneEventsCount()I
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPhoneEventsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 876
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    return-object p0
.end method

.method public getPhoneEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;

    return-object p0
.end method

.method public getPhoneEventsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    return-object p0
.end method

.method public getResult()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;
    .locals 0

    .line 750
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    move-result-object p0

    if-nez p0, :cond_0

    .line 751
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;->FAILURE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Result;

    :cond_0
    return-object p0
.end method

.method public getSensorEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    return-object p0
.end method

.method public getSensorEventsCount()I
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSensorEventsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;",
            ">;"
        }
    .end annotation

    .line 795
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    return-object p0
.end method

.method public getSensorEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;

    return-object p0
.end method

.method public getSensorEventsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1002
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1006
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1007
    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis:J

    .line 1008
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1010
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 1011
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis:J

    .line 1012
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1014
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 1015
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1017
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 1018
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    .line 1019
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v1, v0

    move v0, v2

    .line 1021
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    const/4 v3, 0x5

    .line 1022
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    .line 1023
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1025
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    const/4 v3, 0x6

    .line 1026
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    .line 1027
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1029
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    const/16 v0, 0x9

    .line 1030
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth:I

    .line 1031
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1033
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8

    const/16 v0, 0xa

    .line 1034
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight:I

    .line 1035
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1037
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    const/16 v0, 0xb

    .line 1038
    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    .line 1039
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1041
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    const/16 v0, 0xc

    .line 1042
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    .line 1043
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1045
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b

    const/16 v0, 0xd

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1048
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1049
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedSize:I

    return v1
.end method

.method public getStartTimestampMillis()J
    .locals 2

    .line 679
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis:J

    return-wide v0
.end method

.method public getTouchAreaHeight()I
    .locals 0

    .line 853
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight:I

    return p0
.end method

.method public getTouchAreaWidth()I
    .locals 0

    .line 839
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth:I

    return p0
.end method

.method public getTouchEvents(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    return-object p0
.end method

.method public getTouchEventsCount()I
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTouchEventsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    return-object p0
.end method

.method public getTouchEventsOrBuilder(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;

    return-object p0
.end method

.method public getTouchEventsOrBuilderList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    return-object p0
.end method

.method public getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 0

    .line 868
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object p0

    if-nez p0, :cond_0

    .line 869
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->RESERVED_1:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    :cond_0
    return-object p0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public hasBuild()Z
    .locals 1

    .line 700
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDeviceId()Z
    .locals 1

    .line 913
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDurationMillis()Z
    .locals 1

    .line 686
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

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

.method public hasResult()Z
    .locals 1

    .line 742
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStartTimestampMillis()Z
    .locals 1

    .line 672
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTouchAreaHeight()Z
    .locals 1

    .line 846
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTouchAreaWidth()Z
    .locals 1

    .line 832
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v0, 0x10

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

    .line 860
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1115
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedHashCode:I

    return p0

    :cond_0
    const/16 v0, 0x30b

    .line 1118
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasStartTimestampMillis()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getStartTimestampMillis()J

    move-result-wide v1

    .line 1121
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDurationMillis()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDurationMillis()J

    move-result-wide v1

    .line 1126
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 1129
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getBuild()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1133
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1135
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    add-int/2addr v0, v1

    .line 1137
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchEventsCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 1139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchEventsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1141
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getSensorEventsCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getSensorEventsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1145
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaWidth()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 1149
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasTouchAreaHeight()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getTouchAreaHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1153
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasType()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 1155
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    add-int/2addr v0, v1

    .line 1157
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getPhoneEventsCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 1159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getPhoneEventsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1161
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->hasDeviceId()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 1163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x1d

    .line 1165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 663
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    const-class v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    .line 664
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 953
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 957
    :cond_1
    iput-byte v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;
    .locals 0

    .line 1172
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->newBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;
    .locals 1

    .line 1184
    new-instance p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->newBuilderForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;
    .locals 2

    .line 1177
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->DEFAULT_INSTANCE:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;-><init>(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;-><init>(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    .line 1178
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toBuilder()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Builder;

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

    .line 964
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 965
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->startTimestampMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 967
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 968
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->durationMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 970
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 971
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->build:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 973
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 974
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->result:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 976
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 977
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 979
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 980
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 982
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/16 v1, 0x9

    .line 983
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaWidth:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 985
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/16 v1, 0xa

    .line 986
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchAreaHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 988
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0xb

    .line 989
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->type:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 991
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xc

    .line 992
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 994
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->bitField0:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xd

    .line 995
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->deviceId:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 997
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
