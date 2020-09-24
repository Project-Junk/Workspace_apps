.class public final Lcom/coloros/settings/feature/face/a/b;
.super Lcom/coloros/settings/feature/face/a/a;
.source "ExtendProgressAnimGLActor.java"


# instance fields
.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/a/a;-><init>()V

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/coloros/settings/feature/face/a/b;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 175
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/b;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x1

    const/16 v4, 0x168

    .line 176
    invoke-static {v2, v2, v4, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v4, 0x4500

    .line 177
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 178
    iget v4, v0, Lcom/coloros/settings/feature/face/a/b;->a:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 179
    iget v4, v0, Lcom/coloros/settings/feature/face/a/b;->g:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const v4, 0x84c1

    .line 180
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v4, 0xde1

    move/from16 v5, p1

    .line 181
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 182
    iget v4, v0, Lcom/coloros/settings/feature/face/a/b;->g:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 184
    :cond_0
    iget v1, v0, Lcom/coloros/settings/feature/face/a/b;->e:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 185
    iget v1, v0, Lcom/coloros/settings/feature/face/a/b;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 187
    iget-object v1, v0, Lcom/coloros/settings/feature/face/a/b;->d:[I

    aget v1, v1, v2

    const v4, 0x8892

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 188
    iget v5, v0, Lcom/coloros/settings/feature/face/a/b;->e:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 189
    iget v11, v0, Lcom/coloros/settings/feature/face/a/b;->f:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v1, Lcom/coloros/settings/feature/face/a/c;->a:[F

    array-length v1, v1

    const/4 v5, 0x4

    mul-int/lit8 v16, v1, 0x4

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v1, 0x5

    .line 191
    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 193
    iget v1, v0, Lcom/coloros/settings/feature/face/a/b;->e:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 194
    iget v1, v0, Lcom/coloros/settings/feature/face/a/b;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 196
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 197
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "attribute vec4 position;//vertex \nattribute vec4 inputTextureCoordinate;//texture coordinate \nvarying vec2 textureCoordinate; \n\nvoid main() { \n    gl_Position = position; \n    textureCoordinate = inputTextureCoordinate.xy; \n}"

    const-string v1, "precision highp float;   \nuniform sampler2D uTimeTexture;   \n  \nvarying vec2 textureCoordinate;   \n  \nconst float ZERO_F = 0.0;  \nconst float ONE_F = 1.0;  \nconst float HALF_F = 0.5;  \nconst vec2 bezierPoint1 = vec2(0.25 , 0.1);  \nconst vec2 bezierPoint2 = vec2(0.25 , 1.0);  \nconst float EPSILON = 0.0000625;  \n  \nvec3 count3X(vec2 bezierPoint1, vec2 bezierPoint2){  \n    float cx = 3.0 * bezierPoint1.x;  \n    float bx = 3.0 * (bezierPoint2.x - bezierPoint1.x) - cx;  \n    float ax = 1.0 - cx - bx;  \n    return vec3(ax,bx,cx);  \n}  \n  \nvec3 count3Y(vec2 bezierPoint1, vec2 bezierPoint2){  \n    float cy = 3.0 * bezierPoint1.y;  \n    float by = 3.0 * (bezierPoint2.y - bezierPoint1.y) - cy;  \n    float ay = 1.0 - cy - by;  \n    return vec3(ay,by,cy);  \n}  \n  \nfloat sampleCurveXY(vec3 abc, float t) {  \n    // `ax t^3 + bx t^2 + cx t\' expanded using Horner\'s rule.  \n    return ((abc.x * t + abc.y) * t + abc.z) * t;  \n}  \n  \nfloat sampleCurveDerivativeX(vec3 abc, float t) {  \n    return (3.0 * abc.x * t + 2.0 * abc.y) * t + abc.z;  \n}  \n  \nfloat solveCurveX(vec3 abcX, float x, float epsilon) {  \n    float hasResult = ZERO_F;  \n    float isBroken = ZERO_F;  \n    float result = -ONE_F;  \n    float t0 = 0.0;  \n    float t1 = 1.0;  \n    float t2;  \n    float x2;  \n    float d2;  \n    int i;  \n    // First try a few iterations of Newton\'s method -- normally very fast.  \n  \n   for (t2 = x, i = 0; i < 8; i++) {  \n        if(isBroken < HALF_F){  \n            x2 = sampleCurveXY(abcX, t2) - x;////sampleCurveXY X  \n            if (abs(x2) < epsilon){  \n                result = t2;  \n                hasResult = ONE_F;  \n                isBroken = ONE_F;  \n            }  \n            d2 = sampleCurveDerivativeX(abcX, t2);  \n            isBroken = ONE_F * step(abs(d2), 0.000001);  \n            t2 = t2 - x2 / d2;  \n        }  \n    }  \n  \n    result = result * hasResult;  \n    // Fall back to the bisection method for reliability.  \n    t2 = x;  \n  \n    if (t2 < t0) {  \n         result += t0 * step(hasResult, HALF_F);// hasResult==0.0 then result=t0; else result wont change.  \n         hasResult = ONE_F;  \n    }  \n    if (t2 > t1) {  \n         result += t1 * step(hasResult, HALF_F);  \n         hasResult = ONE_F;  \n    }  \n  \n    isBroken = ZERO_F;  \n  \n    while ((hasResult < HALF_F) && (isBroken < HALF_F) && (t0 < t1)) {//hasResult:no result before; isBroken:is while loop broken.  \n        x2 = sampleCurveXY(abcX, t2);//sampleCurveXY X  \n        if (abs(x2 - x) < epsilon) {  \n            result = t2;  \n            hasResult = ONE_F;  \n            isBroken = ONE_F;  \n        }  \n        if (x > x2) {  \n            t0 = t2;  \n        } else {  \n            t1 = t2;  \n        }  \n        t2 = (t1 - t0) * 0.5 + t0;  \n        if (hasResult < 0.5) {  \n            result = t2;  \n        }  \n    }  \n   // Failure.  \n    return result;  \n}  \n  \nfloat getOppoBezierInterpolation(vec2 bezierPoint1, vec2 bezierPoint2, float epsilon, float time){  \n        vec3 abcX = count3X(bezierPoint1, bezierPoint2);  \n        vec3 abcY = count3Y(bezierPoint1, bezierPoint2);  \n        float solveCurveX = solveCurveX(abcX, time, epsilon);  \n        float interpolation = sampleCurveXY(abcY, solveCurveX);////sampleCurveXY Y  \n        return interpolation;  \n}  \n  \nfloat getInterpolation(float time){  \n    float interpolation = clamp(getOppoBezierInterpolation(bezierPoint1, bezierPoint2, EPSILON, time), ZERO_F, ONE_F);  \n    return interpolation;  \n}  \n  \nvoid main() {   \n    vec4 timeColor = texture2D(uTimeTexture,textureCoordinate);  \n    float time = timeColor.r;  \n    float interpolationAtTime = getInterpolation(time);  \n    if (textureCoordinate.x < (340.0/360.0)) {  \n        gl_FragColor = vec4(interpolationAtTime);  \n    } else {  \n        float time0 = texture2D(uTimeTexture,vec2(0.0,0.5)).r;  \n        float interpolation0 = getInterpolation(time0);  \n        float timeXNear0 = (textureCoordinate.x - (340.0/360.0)) * 18.0;  \n        float interpolationXNear0 = interpolation0 * getInterpolation(timeXNear0);  \n        gl_FragColor = vec4(max(interpolationAtTime,interpolationXNear0));  \n    }  \n}  \n"

    .line 158
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/face/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/b;->a:I

    .line 159
    iget v0, p0, Lcom/coloros/settings/feature/face/a/b;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    iget v0, p0, Lcom/coloros/settings/feature/face/a/b;->a:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/b;->e:I

    .line 161
    iget v0, p0, Lcom/coloros/settings/feature/face/a/b;->a:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/b;->f:I

    .line 162
    iget v0, p0, Lcom/coloros/settings/feature/face/a/b;->a:I

    const-string v1, "uTimeTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/a/b;->g:I

    .line 164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/a/b;->c()V

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/a/b;->d()V

    const-string v0, "ExtendProgressAnimGLActor initShader"

    .line 167
    invoke-static {v0}, Lcom/coloros/settings/feature/face/a/c;->a(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initShader mPositionHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/face/a/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTexcoorHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTimeTextureHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/face/a/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendProgressAnimGLActor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
