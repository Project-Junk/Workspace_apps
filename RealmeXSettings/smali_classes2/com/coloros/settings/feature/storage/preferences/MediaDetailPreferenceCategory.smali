.class public Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "MediaDetailPreferenceCategory.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;
    }
.end annotation


# static fields
.field static final a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;


# instance fields
.field private final b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private final h:Landroidx/preference/PreferenceFragmentCompat;

.field private final i:Landroid/content/res/Resources;

.field private final j:I

.field private final k:Landroid/os/storage/VolumeInfo;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    .line 55
    new-array v0, v0, [Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v2, 0x7f120208

    const v3, 0x7f06022e

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v2, 0x7f120722

    const v3, 0x7f06022f

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v2, 0x7f121880

    const v3, 0x7f060233

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v2, 0x7f120df8

    const v3, 0x7f060232

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v2, 0x7f060230

    const v3, 0x7f12085e

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v3, 0x7f120d91

    const v4, 0x7f060231

    invoke-direct {v1, v3, v4}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const v3, 0x7f120835

    invoke-direct {v1, v3, v2}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;-><init>(II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/storage/VolumeInfo;Z)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->l:J

    .line 80
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->m:J

    .line 81
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->n:J

    .line 83
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->o:J

    .line 84
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->p:J

    .line 85
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->q:J

    .line 86
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->r:J

    .line 88
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->s:J

    const v0, 0x7f0d0226

    .line 98
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->setLayoutResource(I)V

    .line 100
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->k:Landroid/os/storage/VolumeInfo;

    .line 102
    iput-boolean p3, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->t:Z

    .line 103
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->h:Landroidx/preference/PreferenceFragmentCompat;

    .line 104
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    .line 105
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 109
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v2, 0x7f0d00a7

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 112
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 114
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 118
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 122
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 126
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const p1, 0x7f06019f

    .line 128
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->removeAll()V

    .line 154
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x1

    .line 159
    :cond_0
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->p:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    .line 164
    :cond_1
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->r:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    .line 169
    :cond_2
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->q:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    .line 175
    :cond_3
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->s:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->b:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOrder(I)V

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 181
    :cond_4
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->s:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 185
    :cond_5
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 206
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->q:J

    .line 207
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    sget-object v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const v0, 0x7f1205cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 191
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->n:J

    .line 192
    iput-wide p3, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->o:J

    .line 193
    iget-object p3, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p4, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const v0, 0x7f1217eb

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const p3, 0x7f1205cc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-wide p3, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->o:J

    sget-boolean v0, Lcom/coloros/settings/a;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2, p3, p4, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->v:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->u:Z

    return-void
.end method

.method public final b(J)V
    .locals 4

    .line 219
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->r:J

    .line 220
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    sget-object v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const v0, 0x7f1205cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object p1

    .line 228
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(J)V
    .locals 4

    .line 232
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->p:J

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    sget-object v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const v0, 0x7f1205cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 240
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->d:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final d(J)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 4

    .line 249
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->s:J

    .line 250
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    sget-object v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->a:[Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory$a;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->i:Landroid/content/res/Resources;

    const v0, 0x7f1205cc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x12

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "MediaDetailPreferenceCategory"

    const-string v1, "click other"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 278
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 280
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "sdcard"

    goto :goto_0

    :cond_0
    const-string v0, "phone"

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->s:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    .line 283
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    .line 285
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "click_others_id"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/storage/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1293
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1296
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12159a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "navigate_title_text"

    .line 1295
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->v:Ljava/util/ArrayList;

    const-string v2, "path_map"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1298
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->u:Z

    const-string v2, "is_sd_card"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1299
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x66

    .line 1301
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->u:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x381

    .line 1304
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/preferences/MediaDetailPreferenceCategory;->h:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
