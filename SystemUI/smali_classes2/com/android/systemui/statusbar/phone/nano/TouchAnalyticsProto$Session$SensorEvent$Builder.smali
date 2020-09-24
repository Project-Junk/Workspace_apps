.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private timestamp_:J

.field private type_:I

.field private zvalues_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5553
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x1

    .line 5547
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    .line 5549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5554
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V
    .locals 0

    .line 5542
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5559
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x1

    .line 5547
    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    .line 5549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5560
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V
    .locals 0

    .line 5542
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureZvaluesIsMutable()V
    .locals 3

    .line 5816
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5817
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5818
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5565
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5578
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->access$3800()Z

    return-void
.end method


# virtual methods
.method public addAllZvalues(Ljava/lang/Iterable;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;"
        }
    .end annotation

    .line 5870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->ensureZvaluesIsMutable()V

    .line 5871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5678
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addZvalues(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5859
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->ensureZvaluesIsMutable()V

    .line 5860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5861
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1

    .line 5609
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->buildPartial()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    .line 5610
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5611
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    throw p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->build()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->build()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public buildPartial()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 6

    .line 5618
    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$1;)V

    .line 5619
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5624
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    iput v2, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5628
    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timeOffsetNanos_:J

    iput-wide v4, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos:J

    .line 5629
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 5630
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5631
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5633
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->zvalues:Ljava/util/List;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 5637
    :cond_3
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timestamp_:J

    iput-wide v1, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp:J

    .line 5638
    iput v3, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0:I

    .line 5639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->buildPartial()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->buildPartial()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 3

    .line 5584
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x1

    .line 5585
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    .line 5586
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 5587
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timeOffsetNanos_:J

    .line 5588
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5590
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5591
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timestamp_:J

    .line 5592
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5658
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5664
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearTimeOffsetNanos()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 2

    .line 5809
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 5810
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timeOffsetNanos_:J

    .line 5811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 2

    .line 5915
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 5916
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timestamp_:J

    .line 5917
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public clearType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5775
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 5776
    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    .line 5777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public clearZvalues()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5882
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5645
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->clone()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 0

    .line 5604
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getDefaultInstance()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 0

    .line 5542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->getDefaultInstanceForType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 5599
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$3400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public getTimeOffsetNanos()J
    .locals 2

    .line 5792
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timeOffsetNanos_:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 5898
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timestamp_:J

    return-wide v0
.end method

.method public getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;
    .locals 0

    .line 5754
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->valueOf(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5755
    sget-object p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->ACCELEROMETER:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    :cond_0
    return-object p0
.end method

.method public getZvalues(I)F
    .locals 0

    .line 5841
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getZvaluesCount()I
    .locals 0

    .line 5834
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getZvaluesList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 5827
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasTimeOffsetNanos()Z
    .locals 1

    .line 5785
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 1

    .line 5891
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 1

    .line 5746
    iget p0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 2

    .line 5571
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto;->access$3500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    const-class v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    const-class v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5572
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 2

    .line 5692
    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getDefaultInstance()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5694
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5695
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getType()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setType(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5697
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->hasTimeOffsetNanos()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5698
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getTimeOffsetNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5700
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->zvalues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5702
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->zvalues:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    .line 5703
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    goto :goto_0

    .line 5705
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->ensureZvaluesIsMutable()V

    .line 5706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->zvalues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5708
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    .line 5710
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5711
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setTimestamp(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5713
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->access$4000(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5730
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5736
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5732
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5733
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5736
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    .line 5738
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5683
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v0, :cond_0

    .line 5684
    check-cast p1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0

    .line 5686
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5930
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5652
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5671
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5799
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5800
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timeOffsetNanos_:J

    .line 5801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5905
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5906
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->timestamp_:J

    .line 5907
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5765
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->bitField0_:I

    .line 5766
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Type;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->type_:I

    .line 5767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0

    .line 5763
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 0

    .line 5924
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5542
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setZvalues(IF)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;
    .locals 1

    .line 5849
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->ensureZvaluesIsMutable()V

    .line 5850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->zvalues_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5851
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent$Builder;->onChanged()V

    return-object p0
.end method
