.class public Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;
.super Ljava/lang/Object;
.source "SingleCameraBokehJNI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinCamVBProcessData"
.end annotation


# instance fields
.field private m_BlurLevel:F

.field private m_FaceCount:I

.field private m_FaceRect:[I

.field private m_Orientation:I

.field private m_OutTexture:[I

.field private m_RefocusRect:[I

.field private m_SrcTexture:I


# direct methods
.method public constructor <init>(I[II[I[IFI)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_SrcTexture:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_OutTexture:[I

    .line 48
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_FaceCount:I

    .line 49
    iput-object v1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_FaceRect:[I

    .line 50
    iput-object v1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_RefocusRect:[I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_BlurLevel:F

    .line 52
    iput v0, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_Orientation:I

    .line 61
    iput p1, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_SrcTexture:I

    .line 62
    iput-object p2, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_OutTexture:[I

    .line 63
    iput p3, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_FaceCount:I

    .line 64
    iput-object p4, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_FaceRect:[I

    .line 65
    iput-object p5, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_RefocusRect:[I

    .line 66
    iput p6, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_BlurLevel:F

    .line 67
    iput p7, p0, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI$SinCamVBProcessData;->m_Orientation:I

    return-void
.end method
