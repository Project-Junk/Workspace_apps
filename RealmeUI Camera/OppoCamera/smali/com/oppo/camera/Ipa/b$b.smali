.class public Lcom/oppo/camera/Ipa/b$b;
.super Ljava/lang/Object;
.source "ImageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:[I

.field public B:Z

.field public C:Z

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:[I

.field public L:I

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Z

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:Ljava/lang/String;

.field public T:Z

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:I

.field public Z:Ljava/lang/String;

.field public a:[Landroid/hardware/camera2/params/Face;

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:I

.field public ag:I

.field public ah:I

.field public ai:I

.field public aj:I

.field public ak:Z

.field public al:[I

.field public am:[B

.field public an:Z

.field public ao:Landroid/graphics/Rect;

.field public ap:I

.field public aq:Ljava/lang/String;

.field public ar:Z

.field public as:Ljava/lang/Object;

.field public at:I

.field public au:Lcom/oppo/camera/e/d;

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:F

.field public k:I

.field public l:I

.field public m:Landroid/location/Location;

.field public n:D

.field public o:D

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:F

.field public v:I

.field public w:I

.field public x:F

.field public y:[B

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    const-wide/16 v1, 0x0

    .line 81
    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->b:J

    const/4 v3, 0x0

    .line 82
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->c:Z

    .line 83
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->d:Z

    .line 84
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->e:Z

    .line 85
    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->f:J

    const/4 v4, 0x1

    .line 86
    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->g:I

    .line 89
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->h:Ljava/lang/String;

    .line 90
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->i:I

    const/4 v4, 0x0

    .line 91
    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->j:F

    .line 92
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->k:I

    .line 93
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->l:I

    .line 94
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->m:Landroid/location/Location;

    const-wide/16 v5, 0x0

    .line 95
    iput-wide v5, p0, Lcom/oppo/camera/Ipa/b$b;->n:D

    .line 96
    iput-wide v5, p0, Lcom/oppo/camera/Ipa/b$b;->o:D

    .line 97
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->p:Ljava/lang/String;

    .line 98
    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->q:J

    .line 99
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    .line 100
    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->s:J

    .line 101
    iput-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->t:J

    .line 102
    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->u:F

    .line 103
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->v:I

    .line 104
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->w:I

    .line 105
    iput v4, p0, Lcom/oppo/camera/Ipa/b$b;->x:F

    const/16 v1, 0x18

    .line 108
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->y:[B

    .line 109
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->z:I

    const/16 v1, 0x8

    .line 110
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oppo/camera/Ipa/b$b;->A:[I

    .line 111
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->B:Z

    .line 112
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->C:Z

    const-string v2, " "

    .line 113
    iput-object v2, p0, Lcom/oppo/camera/Ipa/b$b;->D:Ljava/lang/String;

    .line 114
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->E:Z

    .line 115
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->F:Z

    .line 116
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->G:Z

    .line 117
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->H:Z

    .line 118
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->I:Z

    const/4 v2, -0x1

    .line 119
    iput v2, p0, Lcom/oppo/camera/Ipa/b$b;->J:I

    .line 120
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->K:[I

    .line 123
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->L:I

    .line 124
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->M:I

    .line 125
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    const-string v1, "default"

    .line 126
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    .line 127
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->P:Z

    const-string v1, ""

    .line 128
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->Q:Ljava/lang/String;

    .line 129
    iput v2, p0, Lcom/oppo/camera/Ipa/b$b;->R:I

    .line 130
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->S:Ljava/lang/String;

    .line 131
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->T:Z

    .line 132
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->U:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->V:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->W:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->X:Ljava/lang/String;

    .line 136
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->Y:I

    .line 137
    iput-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->Z:Ljava/lang/String;

    .line 138
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->aa:I

    .line 139
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ab:I

    .line 142
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ac:I

    .line 143
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ad:I

    .line 144
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ae:I

    .line 145
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->af:I

    .line 146
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ag:I

    .line 147
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ah:I

    .line 148
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ai:I

    .line 149
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->aj:I

    .line 150
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->ak:Z

    .line 153
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->al:[I

    .line 156
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->am:[B

    .line 158
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->an:Z

    .line 160
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->ao:Landroid/graphics/Rect;

    .line 161
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->ap:I

    .line 164
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    .line 167
    iput-boolean v3, p0, Lcom/oppo/camera/Ipa/b$b;->ar:Z

    .line 168
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->as:Ljava/lang/Object;

    .line 169
    iput v3, p0, Lcom/oppo/camera/Ipa/b$b;->at:I

    .line 172
    iput-object v0, p0, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetaItemInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "faceSize: "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n timeStamp: "

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n iso:"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n aperture: "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n whiteBalanceMode: "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n flashValue: "

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n latitude: "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n longitude: "

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n mExposureTime: "

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n mFocalLength: "

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n mManufacture: "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n jpegOrientation: "

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mJpegQuality: "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mBeautyLevel: "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mCustomBeautyParam: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->A:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mbVideoMode: "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbFlashSnapshot: "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mProjectName: "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mbFrontCamera: "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbPortrait: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbSuperNight: "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbForbidBeauty: "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->H:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mbHighResolution: "

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mPreviewWidth: "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mPreviewHeight: "

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mWatermarkPath: "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mFilterType: "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputWidth: "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputHeight: "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputStride: "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ae:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mInputScanline: "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputWidth: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputHeight: "

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputStride: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mOutputScanline: "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->aj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mbMirror: "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/Ipa/b$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n mAlgoFlag: "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n mMergeNum: "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/Ipa/b$b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n mUserComment: "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/b$b;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
