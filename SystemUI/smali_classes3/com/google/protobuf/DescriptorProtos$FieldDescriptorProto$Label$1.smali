.class final Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 0

    .line 11628
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->forNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 11626
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;->findValueByNumber(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object p0

    return-object p0
.end method