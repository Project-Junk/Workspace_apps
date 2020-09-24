.class public final Lcom/android/systemui/plugins/ColorVolumeDialogController$State;
.super Ljava/lang/Object;
.source "ColorVolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/ColorVolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static NO_ACTIVE_STREAM:I = -0x1

.field public static final VERSION:I = 0x1


# instance fields
.field public activeStream:I

.field public disallowAlarms:Z

.field public disallowMedia:Z

.field public disallowRinger:Z

.field public disallowSystem:Z

.field public effectsSuppressor:Landroid/content/ComponentName;

.field public effectsSuppressorName:Ljava/lang/String;

.field public isDeviceHasMic:Z

.field public ringerModeExternal:I

.field public ringerModeInternal:I

.field public final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field public zenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 121
    sget v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->NO_ACTIVE_STREAM:I

    iput v0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    return-void
.end method

.method private static sep(Ljava/lang/StringBuilder;I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0xa

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v1, 0x20

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/ColorVolumeDialogController$State;
    .locals 5

    .line 132
    new-instance v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;-><init>()V

    const/4 v1, 0x0

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    invoke-virtual {v4}, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->copy()Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    .line 137
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    .line 138
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    .line 139
    iget-object v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 143
    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    iput v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    .line 144
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    .line 145
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    .line 147
    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    .line 150
    iget-boolean p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    iput-boolean p0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 162
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    :cond_0
    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    .line 165
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 168
    iget-object v3, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    .line 169
    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v2, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_2

    const-string v2, " [MUTED]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    iget-boolean v2, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    if-eqz v2, :cond_3

    const-string v2, " [DYNAMIC]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_4
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "ringerModeExternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "ringerModeInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "zenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "effectsSuppressor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "effectsSuppressorName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "activeStream:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowAlarms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowMedia:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v1, "disallowRinger:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-lez p1, :cond_5

    .line 185
    invoke-static {v0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    :cond_5
    const/16 p0, 0x7d

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
