.class public Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;
.super Ljava/lang/Object;
.source "SingleCameraBokehJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinCamVBInitData"
.end annotation


# instance fields
.field private m_CameraType:I

.field private m_Format:I

.field private m_ModelInit:I

.field private m_OutHeight:I

.field private m_OutWidth:I

.field private m_SrcHeight:I

.field private m_SrcWidth:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_SrcWidth:I

    .line 21
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_SrcHeight:I

    .line 22
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_OutWidth:I

    .line 23
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_OutHeight:I

    .line 24
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_Format:I

    .line 25
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_CameraType:I

    .line 26
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_ModelInit:I

    .line 35
    iput p1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_SrcWidth:I

    .line 36
    iput p2, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_SrcHeight:I

    .line 37
    iput p3, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_OutWidth:I

    .line 38
    iput p4, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_OutHeight:I

    .line 39
    iput p5, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_Format:I

    .line 40
    iput p6, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_CameraType:I

    .line 41
    iput p7, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBInitData;->m_ModelInit:I

    return-void
.end method
