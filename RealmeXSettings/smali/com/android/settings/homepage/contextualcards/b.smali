.class public Lcom/android/settings/homepage/contextualcards/b;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/settings/homepage/contextualcards/b$a;

.field public final b:D

.field public final c:Ljava/lang/String;

.field final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Landroid/graphics/drawable/Drawable;

.field final i:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public final j:Z

.field final k:Z

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:J

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:I

.field private final u:I

.field private final v:J


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Lcom/android/settings/homepage/contextualcards/b$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/b$a;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    const-string v0, "name"

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    .line 21300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    const-string/jumbo v0, "type"

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->m:I

    .line 203
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/b;->m:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/b$a;->a(I)Lcom/android/settings/homepage/contextualcards/b$a;

    const-string v0, "score"

    .line 204
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 205
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 21310
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->c:D

    const-string v0, "slice_uri"

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 21315
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->d:Ljava/lang/String;

    const-string v0, "category"

    .line 208
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->d:I

    .line 209
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/b;->d:I

    .line 21320
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->e:I

    const-string v0, "localized_to_locale"

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 210
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->n:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->n:Ljava/lang/String;

    .line 21325
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->f:Ljava/lang/String;

    const-string v0, "package_name"

    .line 213
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->o:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->o:Ljava/lang/String;

    .line 21330
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->g:Ljava/lang/String;

    const-string v0, "app_version"

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->p:J

    .line 216
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/b;->p:J

    .line 21335
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->h:J

    const-string/jumbo v0, "title_res_name"

    .line 218
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->q:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->q:Ljava/lang/String;

    .line 21340
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->i:Ljava/lang/String;

    const-string/jumbo v0, "title_text"

    .line 220
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 21345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    const-string v0, "summary_res_name"

    .line 223
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->r:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->r:Ljava/lang/String;

    .line 21350
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->k:Ljava/lang/String;

    const-string v0, "summary_text"

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->f:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->f:Ljava/lang/String;

    .line 21355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    const-string v0, "icon_res_name"

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->s:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->s:Ljava/lang/String;

    .line 21360
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->m:Ljava/lang/String;

    const-string v0, "icon_res_id"

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->t:I

    .line 230
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/b;->t:I

    .line 21365
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->n:I

    const-string v0, "card_action"

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->u:I

    .line 232
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/b;->u:I

    .line 21370
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->o:I

    const-string v0, "expire_time_ms"

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->v:J

    .line 234
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->v:J

    .line 21375
    iput-wide v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->p:J

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->g:Z

    .line 236
    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/b;->g:Z

    .line 21385
    iput-boolean v1, p1, Lcom/android/settings/homepage/contextualcards/b$a;->r:Z

    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 22380
    iput-object v1, p1, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    .line 239
    iget p1, p0, Lcom/android/settings/homepage/contextualcards/b;->m:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f0d0122

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/b;->i:I

    .line 240
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/b;->i:I

    .line 23390
    iput v1, p1, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 241
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->j:Z

    .line 242
    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/b;->j:Z

    .line 23395
    iput-boolean v1, p1, Lcom/android/settings/homepage/contextualcards/b$a;->t:Z

    .line 243
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->k:Z

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->k:Z

    .line 23400
    iput-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->u:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/b$a;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/b;->a:Lcom/android/settings/homepage/contextualcards/b$a;

    .line 1275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    .line 2275
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->b:I

    .line 176
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->m:I

    .line 3275
    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->c:D

    .line 177
    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->b:D

    .line 4275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->d:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->c:Ljava/lang/String;

    .line 5275
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->e:I

    .line 179
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->d:I

    .line 6275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->f:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->n:Ljava/lang/String;

    .line 7275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->g:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->o:Ljava/lang/String;

    .line 8275
    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->h:J

    .line 182
    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->p:J

    .line 9275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->i:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->q:Ljava/lang/String;

    .line 10275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->e:Ljava/lang/String;

    .line 11275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->k:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->r:Ljava/lang/String;

    .line 12275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->f:Ljava/lang/String;

    .line 13275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->m:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->s:Ljava/lang/String;

    .line 14275
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->n:I

    .line 188
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->t:I

    .line 15275
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->o:I

    .line 189
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->u:I

    .line 16275
    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->p:J

    .line 190
    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/b;->v:J

    .line 17275
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    .line 191
    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->h:Landroid/graphics/drawable/Drawable;

    .line 18275
    iget-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->r:Z

    .line 192
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->g:Z

    .line 19275
    iget v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 193
    iput v0, p0, Lcom/android/settings/homepage/contextualcards/b;->i:I

    .line 20275
    iget-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/b$a;->t:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/b;->j:Z

    .line 21275
    iget-boolean p1, p1, Lcom/android/settings/homepage/contextualcards/b$a;->u:Z

    .line 195
    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/b;->k:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/settings/homepage/contextualcards/b;->m:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 260
    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/contextualcards/b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 263
    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/b;

    .line 265
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/b;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
